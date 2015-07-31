package com.atom.coco.general.upload;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springside.modules.web.Servlets;

import com.atom.coco.general.constants.Constants;
import com.atom.coco.modules.demo.entity.Task;
import com.opensymphony.module.sitemesh.filter.PageResponseWrapper;

@Controller
@RequestMapping(value = "/upload")
public class FileUploadController {

	@Autowired
	private FileUploadService uploadService;

	@RequestMapping(value = "/up")
	public String home() {

		return "upload/fileUploader";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody List<UploadedFile> upload(MultipartHttpServletRequest request, HttpServletResponse response) throws IOException {

		// Getting uploaded files from the request object
		Map<String, MultipartFile> fileMap = request.getFileMap();

		// Maintain a list to send back the files info. to the client side
		List<UploadedFile> uploadedFiles = new ArrayList<UploadedFile>();

		// Iterate through the map
		for (MultipartFile multipartFile : fileMap.values()) {

			// Save the file to local disk
			saveFileToLocalDisk(multipartFile);

			UploadedFile fileInfo = getUploadedFileInfo(multipartFile);

			// Save the file info to database
			fileInfo = saveFileToDatabase(fileInfo);

			// adding the file info to the list
			uploadedFiles.add(fileInfo);
		}

		return uploadedFiles;
	}

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String listFiles(@RequestParam(value = "page", defaultValue = "1") int pageNumber,
			@RequestParam(value = "page.size", defaultValue = Constants.PAGE_SIZE) int pageSize, 
			Model model) {
		Page<UploadedFile> uploadedFile = (Page<UploadedFile>) uploadService.listFiles(pageNumber, pageSize);
		model.addAttribute("fileList", uploadedFile);

		return "upload/listFiles";
	}

	@RequestMapping(value = "/get/{fileId}", method = RequestMethod.GET)
	public void getFile(HttpServletResponse response, @PathVariable Long fileId) {

		UploadedFile dataFile = uploadService.getFile(fileId);

		File file = new File(dataFile.getLocation(), dataFile.getName());

		try {
			response.setContentType(dataFile.getType());
			response.setHeader("Content-disposition", "attachment; filename=\"" + dataFile.getName() + "\"");

			FileCopyUtils.copy(FileUtils.readFileToByteArray(file), response.getOutputStream());

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void saveFileToLocalDisk(MultipartFile multipartFile) throws IOException, FileNotFoundException {

		String outputFileName = getOutputFilename(multipartFile);

		FileCopyUtils.copy(multipartFile.getBytes(), new FileOutputStream(outputFileName));
	}

	private UploadedFile saveFileToDatabase(UploadedFile uploadedFile) {

		return uploadService.saveFile(uploadedFile);
	}

	private String getOutputFilename(MultipartFile multipartFile) {

		return Constants.UPLOADTEMP + multipartFile.getOriginalFilename();
	}

	private UploadedFile getUploadedFileInfo(MultipartFile multipartFile) throws IOException {

		UploadedFile fileInfo = new UploadedFile();
		fileInfo.setName(multipartFile.getOriginalFilename());
		fileInfo.setSize(multipartFile.getSize());
		fileInfo.setType(multipartFile.getContentType());
		fileInfo.setLocation(Constants.UPLOADTEMP);

		return fileInfo;
	}

}
