<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!-- #section:basics/sidebar -->
<div id="sidebar" class="sidebar responsive">
	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
	</script>

	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-success">
				<i class="ace-icon fa fa-signal"></i>
			</button>

			<button class="btn btn-info">
				<i class="ace-icon fa fa-pencil"></i>
			</button>

			<!-- #section:basics/sidebar.layout.shortcuts -->
			<button class="btn btn-warning">
				<i class="ace-icon fa fa-users"></i>
			</button>

			<button class="btn btn-danger">
				<i class="ace-icon fa fa-cogs"></i>
			</button>

			<!-- /section:basics/sidebar.layout.shortcuts -->
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span>

			<span class="btn btn-info"></span>

			<span class="btn btn-warning"></span>

			<span class="btn btn-danger"></span>
		</div>
	</div><!-- /.sidebar-shortcuts -->

	<ul class="nav nav-list">
		<li class="">
			<a data-url="page/index" href="${ctx}/index">
				<i class="menu-icon fa fa-tachometer"></i>
				<span class="menu-text"> Dashboard </span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-desktop"></i>
				<span class="menu-text">
					UI &amp; Elements
				</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/typography" href="#page/typography">
						<i class="menu-icon fa fa-caret-right"></i>
						Typography
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/elements" href="#page/elements">
						<i class="menu-icon fa fa-caret-right"></i>
						Elements
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/buttons" href="#page/buttons">
						<i class="menu-icon fa fa-caret-right"></i>
						Buttons &amp; Icons
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/content-slider" href="#page/content-slider">
						<i class="menu-icon fa fa-caret-right"></i>
						Content Sliders
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/treeview" href="#page/treeview">
						<i class="menu-icon fa fa-caret-right"></i>
						Treeview
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/nestable-list" href="#page/nestable-list">
						<i class="menu-icon fa fa-caret-right"></i>
						Nestable Lists
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a href="#" class="dropdown-toggle">
						<i class="menu-icon fa fa-caret-right"></i>

						Three Level Menu
						<b class="arrow fa fa-angle-down"></b>
					</a>

					<b class="arrow"></b>

					<ul class="submenu">
						<li class="">
							<a href="#">
								<i class="menu-icon fa fa-leaf green"></i>
								Item #1
							</a>

							<b class="arrow"></b>
						</li>

						<li class="">
							<a href="#" class="dropdown-toggle">
								<i class="menu-icon fa fa-pencil orange"></i>

								4th level
								<b class="arrow fa fa-angle-down"></b>
							</a>

							<b class="arrow"></b>

							<ul class="submenu">
								<li class="">
									<a href="#">
										<i class="menu-icon fa fa-plus purple"></i>
										Add Product
									</a>

									<b class="arrow"></b>
								</li>

								<li class="">
									<a href="#">
										<i class="menu-icon fa fa-eye pink"></i>
										View Products
									</a>

									<b class="arrow"></b>
								</li>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-list"></i>
				<span class="menu-text"> Tables </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/tables" href="#page/tables">
						<i class="menu-icon fa fa-caret-right"></i>
						Simple &amp; Dynamic
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/jqgrid" href="#page/jqgrid">
						<i class="menu-icon fa fa-caret-right"></i>
						jqGrid plugin
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-pencil-square-o"></i>
				<span class="menu-text"> Forms </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/form-elements" href="#page/form-elements">
						<i class="menu-icon fa fa-caret-right"></i>
						Form Elements
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/form-elements-2" href="#page/form-elements-2">
						<i class="menu-icon fa fa-caret-right"></i>
						Form Elements 2
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/form-wizard" href="#page/form-wizard">
						<i class="menu-icon fa fa-caret-right"></i>
						Wizard &amp; Validation
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/wysiwyg" href="#page/wysiwyg">
						<i class="menu-icon fa fa-caret-right"></i>
						Wysiwyg &amp; Markdown
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/dropzone" href="#page/dropzone">
						<i class="menu-icon fa fa-caret-right"></i>
						Dropzone File Upload
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class="">
			<a data-url="page/widgets" href="#page/widgets">
				<i class="menu-icon fa fa-list-alt"></i>
				<span class="menu-text"> Widgets </span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a data-url="page/calendar" href="#page/calendar">
				<i class="menu-icon fa fa-calendar"></i>

				<span class="menu-text">
					Calendar

					<!-- #section:basics/sidebar.layout.badge -->
					<span class="badge badge-transparent tooltip-error" title="2 Important Events">
						<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
					</span>

					<!-- /section:basics/sidebar.layout.badge -->
				</span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a data-url="page/gallery" href="#page/gallery">
				<i class="menu-icon fa fa-picture-o"></i>
				<span class="menu-text"> Gallery </span>
			</a>

			<b class="arrow"></b>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-tag"></i>
				<span class="menu-text"> More Pages </span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/profile" href="#page/profile">
						<i class="menu-icon fa fa-caret-right"></i>
						User Profile
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/inbox" href="#page/inbox">
						<i class="menu-icon fa fa-caret-right"></i>
						Inbox
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/pricing" href="#page/pricing">
						<i class="menu-icon fa fa-caret-right"></i>
						Pricing Tables
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/invoice" href="#page/invoice">
						<i class="menu-icon fa fa-caret-right"></i>
						Invoice
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/timeline" href="#page/timeline">
						<i class="menu-icon fa fa-caret-right"></i>
						Timeline
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/email" href="#page/email">
						<i class="menu-icon fa fa-caret-right"></i>
						Email Templates
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/login" href="../login.html">
						<i class="menu-icon fa fa-caret-right"></i>
						Login &amp; Register
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>

		<li class="">
			<a href="#" class="dropdown-toggle">
				<i class="menu-icon fa fa-file-o"></i>

				<span class="menu-text">
					Other Pages

					<!-- #section:basics/sidebar.layout.badge -->
					<span class="badge badge-primary">5</span>

					<!-- /section:basics/sidebar.layout.badge -->
				</span>

				<b class="arrow fa fa-angle-down"></b>
			</a>

			<b class="arrow"></b>

			<ul class="submenu">
				<li class="">
					<a data-url="page/faq" href="#page/faq">
						<i class="menu-icon fa fa-caret-right"></i>
						FAQ
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/error-404" href="#page/error-404">
						<i class="menu-icon fa fa-caret-right"></i>
						Error 404
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/error-500" href="#page/error-500">
						<i class="menu-icon fa fa-caret-right"></i>
						Error 500
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/grid" href="#page/grid">
						<i class="menu-icon fa fa-caret-right"></i>
						Grid
					</a>

					<b class="arrow"></b>
				</li>

				<li class="">
					<a data-url="page/blank" href="#page/blank">
						<i class="menu-icon fa fa-caret-right"></i>
						Blank Page
					</a>

					<b class="arrow"></b>
				</li>
			</ul>
		</li>
	</ul><!-- /.nav-list -->

	<!-- #section:basics/sidebar.layout.minimize -->
	<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
		<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
	</div>

	<!-- /section:basics/sidebar.layout.minimize -->
	<script type="text/javascript">
		try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
	</script>
</div>
