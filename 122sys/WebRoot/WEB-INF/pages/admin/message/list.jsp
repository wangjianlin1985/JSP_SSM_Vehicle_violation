<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>{{SystemTitle}}</title>
    <meta name="description" content="overview &amp; stats" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<%=basePath%>static/ace/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<%=basePath%>static/ace/assets/font-awesome-4.5.0/css/font-awesome.min.css" /><!--
		<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" /> -->

    <!-- page specific plugin styles -->


    <!-- ace styles -->
    <link rel="stylesheet" href="<%=basePath%>static/ace/assets/css/ace.min.css" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="<%=basePath%>static/ace/assets/css/ace-part2.min.css" />
    <![endif]-->
    <link rel="stylesheet" href="<%=basePath%>static/ace/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="<%=basePath%>static/ace/assets/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="<%=basePath%>static/ace/assets/css/ace-ie.min.css" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="<%=basePath%>static/ace/assets/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="<%=basePath%>static/ace/assets/js/html5shiv.js"></script>
    <script src="<%=basePath%>static/ace/assets/js/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        body,html{font-family: "微软雅黑","黑体",serif;}
    </style>
</head>

	<body class="no-skin">

				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">首页</a>
						</li>

						<li>
							<a href="#">内部交流</a>
						</li>
						<li class="active">表单</li>
					</ul><!-- /.breadcrumb -->
				</div>

				<div class="page-content">


					<div class="page-header">
						<h1>
							系统表单
							<small>
								<i class="ace-icon fa fa-angle-double-right"></i>
								内部交流
							</small>
						</h1>
					</div><!-- /.page-header -->

					<div class="row">
   <p class="alert alert-info">
   <h2>
                        ${message }
                        </h2>
                        </p>
						<div class="col-xs-12 col-sm-10 col-sm-offset-1">
							<div class="timeline-container">
								<div class="timeline-label">
													<span class="label label-primary arrowed-in-right label-lg">
														<b>互动交流</b>
													</span>
								</div>

								 <c:forEach items="${requestScope.list }" varStatus="vs" var="u">

								<div class="timeline-items">
									<div class="timeline-item clearfix">
										<div class="timeline-info">
											<span class="label label-info label-sm">
											${vs.index+1 }
											</span>
										</div>

										<div class="widget-box transparent">
											<div class="widget-header widget-header-small">
												<h5 class="widget-title smaller">
													<a href="#" class="blue">${u.u.username }</a>
													<span class="grey">${u.subject }</span>
												</h5>

																<span class="widget-toolbar no-border">
																	<i class="ace-icon fa fa-clock-o bigger-110"></i>
																	${u.created }
																</span>

																<span class="widget-toolbar">
																	<a href="#" data-action="reload">
																		<i class="ace-icon fa fa-refresh"></i>
																	</a>

																	<a href="#" data-action="collapse">
																		<i class="ace-icon fa fa-chevron-up"></i>
																	</a>
																</span>
											</div>

											<div class="widget-body">
												<div class="widget-main">
													${u.content }
													<div class="space-6"></div>

													<div class="widget-toolbox clearfix">
														<div class="pull-left">
															<i class="ace-icon fa fa-hand-o-right grey bigger-125"></i>
															<a href="#mainFM" class="bigger-110">我要发表 …</a>
														</div>


													</div>
												</div>
											</div>
										</div>
									</div>

</c:forEach>


							</div><!-- /.timeline-container -->
						</div>

						<div class="col-xs-12">
							<!-- PAGE CONTENT BEGINS -->
							<form action="<%=basePath %>message/message/save" class="form-horizontal" id="mainFM" enctype="multipart/form-data" role="form" method="post">


								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1">
                                        主题
                                    </label>

									<div class="col-sm-9">
										<input name="title" type="text" id="form-field-1" required="" placeholder="" class="col-xs-10 col-sm-5" />
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" for="form-field-1">
                                        内容
                                    </label>

									<div class="col-sm-9">
										<textarea name="bodytext" id="form-field-1" required="" placeholder="" class="col-xs-10 col-sm-5" ></textarea>
									</div>
								</div>


								<div class="clearfix form-actions">
									<div class="col-md-offset-3 col-md-9">
										<button class="btn btn-info" type="submit">
											<i class="ace-icon fa fa-check bigger-110"></i>
											提交
										</button>

										&nbsp; &nbsp; &nbsp;
										<button class="btn" type="reset">
											<i class="ace-icon fa fa-undo bigger-110"></i>
											重置
										</button>
									</div>
								</div>

								<div class="hr hr-24"></div>



								<div class="space-24"></div>

								<hr />

							</form>

							<div class="hr hr-18 dotted hr-double"></div>






						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.page-content -->



		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="<%=basePath%>static/ace/assets/js/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="<%=basePath%>static/ace/assets/js/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='<%=basePath%>static/ace/assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<%=basePath%>static/ace/assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=basePath%>static/ace/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
                <script src="<%=basePath%>static/ace/assets/bootstrap/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="<%=basePath%>static/ace/assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="<%=basePath%>static/ace/assets/js/jquery-ui.custom.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/chosen.jquery.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/fuelux/fuelux.spinner.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/date-time/bootstrap-datepicker.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/date-time/bootstrap-timepicker.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/date-time/moment.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/date-time/daterangepicker.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/date-time/bootstrap-datetimepicker.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/bootstrap-colorpicker.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/jquery.knob.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/jquery.autosize.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/jquery.maskedinput.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/bootstrap-tag.min.js"></script>

		<!-- ace scripts -->
		<script src="<%=basePath%>static/ace/assets/js/ace-elements.min.js"></script>
		<script src="<%=basePath%>static/ace/assets/js/ace.min.js"></script>


					


				<script src="<%=basePath%>static/kindeditor-4.1.10/kindeditor-min.js"></script>
				<script>
					var editor;
					KindEditor.ready(function (K) {
						editor = K.create('textarea[name="bodytext"]', {
							uploadJson: '<%=basePath%>static/kindeditor-4.1.10/php/upload_json.php',
							fileManagerJson: '<%=basePath%>static/kindeditor-4.1.10/php/file_manager_json.php',
							allowFileManager: true,
							items : ['source',
								'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
								'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
								'insertunorderedlist', '|', 'emoticons', 'image', 'link','fullscreen'],
							afterBlur: function () {
								this.sync();
							}
						});
					});

				</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				$('#id-disable-check').on('click', function() {
					var inp = $('#form-input-readonly').get(0);
					if(inp.hasAttribute('disabled')) {
						inp.setAttribute('readonly' , 'true');
						inp.removeAttribute('disabled');
						inp.value="This text field is readonly!";
					}
					else {
						inp.setAttribute('disabled' , 'disabled');
						inp.removeAttribute('readonly');
						inp.value="This text field is disabled!";
					}
				});
			
			
				$('.chosen-select').chosen({allow_single_deselect:true}); 
				//resize the chosen on window resize
				$(window).on('resize.chosen', function() {
					var w = $('.chosen-select').parent().width();
					$('.chosen-select').next().css({'width':w});
				}).trigger('resize.chosen');
			
				$('#chosen-multiple-style').on('click', function(e){
					var target = $(e.target).find('input[type=radio]');
					var which = parseInt(target.val());
					if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
					 else $('#form-field-select-4').removeClass('tag-input-style');
				});
			
			
				$('[data-rel=tooltip]').tooltip({container:'body'});
				$('[data-rel=popover]').popover({container:'body'});
				
				$('textarea[class*=autosize]').autosize({append: "\n"});
				$('textarea.limited').inputlimiter({
					remText: '%n character%s remaining...',
					limitText: 'max allowed : %n.'
				});
			
				$.mask.definitions['~']='[+-]';
				$('.input-mask-date').mask('99/99/9999');
				$('.input-mask-phone').mask('(999) 999-9999');
				$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
				$(".input-mask-product").mask("a*-999-a999",{placeholder:" ",completed:function(){alert("You typed the following: "+this.val());}});
			
			
			
				$( "#input-size-slider" ).css('width','200px').slider({
					value:1,
					range: "min",
					min: 1,
					max: 8,
					step: 1,
					slide: function( event, ui ) {
						var sizing = ['', 'input-sm', 'input-lg', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
						var val = parseInt(ui.value);
						$('#form-field-4').attr('class', sizing[val]).val('.'+sizing[val]);
					}
				});
			
				$( "#input-span-slider" ).slider({
					value:1,
					range: "min",
					min: 1,
					max: 12,
					step: 1,
					slide: function( event, ui ) {
						var val = parseInt(ui.value);
						$('#form-field-5').attr('class', 'col-xs-'+val).val('.col-xs-'+val);
					}
				});
			
			
				
				//"jQuery UI Slider"
				//range slider tooltip example
				$( "#slider-range" ).css('height','200px').slider({
					orientation: "vertical",
					range: true,
					min: 0,
					max: 100,
					values: [ 17, 67 ],
					slide: function( event, ui ) {
						var val = ui.values[$(ui.handle).index()-1] + "";
			
						if( !ui.handle.firstChild ) {
							$("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>")
							.prependTo(ui.handle);
						}
						$(ui.handle.firstChild).show().children().eq(1).text(val);
					}
				}).find('a').on('blur', function(){
					$(this.firstChild).hide();
				});
				
				
				$( "#slider-range-max" ).slider({
					range: "max",
					min: 1,
					max: 10,
					value: 2
				});
				
				$( "#slider-eq > span" ).css({width:'90%', 'float':'left', margin:'15px'}).each(function() {
					// read initial values from markup and remove that
					var value = parseInt( $( this ).text(), 10 );
					$( this ).empty().slider({
						value: value,
						range: "min",
						animate: true
						
					});
				});
				
				$("#slider-eq > span.ui-slider-purple").slider('disable');//disable third item
			
				
				$('#id-input-file-1 , #id-input-file-2').ace_file_input({
					no_file:'No File ...',
					btn_choose:'Choose',
					btn_change:'Change',
					droppable:false,
					onchange:null,
					thumbnail:false //| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					//
				});
				//pre-show a file name, for example a previously selected file
				//$('#id-input-file-1').ace_file_input('show_file_list', ['myfile.txt'])
			
			
				$('#id-input-file-3').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'ace-icon fa fa-cloud-upload',
					droppable:true,
					thumbnail:'small'//large | fit
					//,icon_remove:null//set null, to hide remove/reset button
					/**,before_change:function(files, dropped) {
						//Check an example below

						//or examples/file-upload.html
						return true;
					}*/
					/**,before_remove : function() {
						return true;
					}*/
					,
					preview_error : function(filename, error_code) {
						//name of the file that failed
						//error_code values
						//1 = 'FILE_LOAD_FAILED',
						//2 = 'IMAGE_LOAD_FAILED',
						//3 = 'THUMBNAIL_FAILED'
						//alert(error_code);
					}
			
				}).on('change', function(){
					//console.log($(this).data('ace_input_files'));
					//console.log($(this).data('ace_input_method'));
				});
				
			
				//dynamically change allowed formats by changing allowExt && allowMime function
				$('#id-file-format').removeAttr('checked').on('change', function() {
					var whitelist_ext, whitelist_mime;
					var btn_choose
					var no_icon
					if(this.checked) {
						btn_choose = "Drop images here or click to choose";
						no_icon = "ace-icon fa fa-picture-o";
			
						whitelist_ext = ["jpeg", "jpg", "png", "gif" , "bmp"];
						whitelist_mime = ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/bmp"];
					}
					else {
						btn_choose = "Drop files here or click to choose";
						no_icon = "ace-icon fa fa-cloud-upload";
						
						whitelist_ext = null;//all extensions are acceptable
						whitelist_mime = null;//all mimes are acceptable
					}
					var file_input = $('#id-input-file-3');
					file_input
					.ace_file_input('update_settings',
					{
						'btn_choose': btn_choose,
						'no_icon': no_icon,
						'allowExt': whitelist_ext,
						'allowMime': whitelist_mime
					})
					file_input.ace_file_input('reset_input');
					
					file_input
					.off('file.error.ace')
					.on('file.error.ace', function(e, info) {
						//console.log(info.file_count);//number of selected files
						//console.log(info.invalid_count);//number of invalid files
						//console.log(info.error_list);//a list of errors in the following format
						
						//info.error_count['ext']
						//info.error_count['mime']
						//info.error_count['size']
						
						//info.error_list['ext']  = [list of file names with invalid extension]
						//info.error_list['mime'] = [list of file names with invalid mimetype]
						//info.error_list['size'] = [list of file names with invalid size]
						
						
						/**
						if( !info.dropped ) {
							//perhapse reset file field if files have been selected, and there are invalid files among them
							//when files are dropped, only valid files will be added to our file array
							e.preventDefault();//it will rest input
						}
						*/
						
						
						//if files have been selected (not dropped), you can choose to reset input
						//because browser keeps all selected files anyway and this cannot be changed
						//we can only reset file field to become empty again
						//on any case you still should check files with your server side script
						//because any arbitrary file can be uploaded by user and it's not safe to rely on browser-side measures
					});
				
				});
			
				$('#spinner1').ace_spinner({value:0,min:0,max:200,step:10, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
				.on('change', function(){
					//alert(this.value)
				});
				$('#spinner2').ace_spinner({value:0,min:0,max:10000,step:100, touch_spinner: true, icon_up:'ace-icon fa fa-caret-up', icon_down:'ace-icon fa fa-caret-down'});
				$('#spinner3').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'ace-icon fa fa-plus smaller-75', icon_down:'ace-icon fa fa-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});
				//$('#spinner1').ace_spinner('disable').ace_spinner('value', 11);
				//or
				//$('#spinner1').closest('.ace-spinner').spinner('disable').spinner('enable').spinner('value', 11);//disable, enable or change value
				//$('#spinner1').closest('.ace-spinner').spinner('value', 0);//reset to 0
			
			
				//datepicker plugin
				//link
				$('.date-picker').datepicker({
					autoclose: true,
					todayHighlight: true
				})
				//show datepicker when clicking on the icon
				.next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
			
				//or change it into a date range picker
				$('.input-daterange').datepicker({autoclose:true});
			
			
				//to translate the daterange picker, please copy the "examples/daterange-fr.js" contents here before initialization
				$('input[name=date-range-picker]').daterangepicker({
					'applyClass' : 'btn-sm btn-success',
					'cancelClass' : 'btn-sm btn-default',
					locale: {
						applyLabel: 'Apply',
						cancelLabel: 'Cancel',
					}
				})
				.prev().on(ace.click_event, function(){
					$(this).next().focus();
				});
			
			
				$('#timepicker1').timepicker({
					minuteStep: 1,
					showSeconds: true,
					showMeridian: false
				}).next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				
				$('#date-timepicker1').datetimepicker().next().on(ace.click_event, function(){
					$(this).prev().focus();
				});
				
			
				$('#colorpicker1').colorpicker();
			
				$('#simple-colorpicker-1').ace_colorpicker();
				//$('#simple-colorpicker-1').ace_colorpicker('pick', 2);//select 2nd color
				//$('#simple-colorpicker-1').ace_colorpicker('pick', '#fbe983');//select #fbe983 color
				//var picker = $('#simple-colorpicker-1').data('ace_colorpicker')
				//picker.pick('red', true);//insert the color if it doesn't exist
			
			
				$(".knob").knob();
				
				
				var tag_input = $('#form-field-tags');
				try{
					tag_input.tag(
					  {
						placeholder:tag_input.attr('placeholder'),
						//enable typeahead by specifying the source array
						source: ace.vars['US_STATES'],//defined in ace.js >> ace.enable_search_ahead
						/**
						//or fetch data from database, fetch those that match "query"
						source: function(query, process) {
						  $.ajax({url: 'remote_source.php?q='+encodeURIComponent(query)})
						  .done(function(result_items){
							process(result_items);
						  });
						}
						*/
					  }
					);
			
					//programmatically add a new
					var $tag_obj = $('#form-field-tags').data('tag');
					$tag_obj.add('Programmatically Added');
				}
				catch(e) {
					//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
					tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
					//$('#form-field-tags').autosize({append: "\n"});
				}
				
				
				
			
				/////////
				$('#modal-form input[type=file]').ace_file_input({
					style:'well',
					btn_choose:'Drop files here or click to choose',
					btn_change:null,
					no_icon:'ace-icon fa fa-cloud-upload',
					droppable:true,
					thumbnail:'large'
				})
				
				//chosen plugin inside a modal will have a zero width because the select element is originally hidden
				//and its width cannot be determined.
				//so we set the width after modal is show
				$('#modal-form').on('shown.bs.modal', function () {
					$(this).find('.chosen-container').each(function(){
						$(this).find('a:first-child').css('width' , '210px');
						$(this).find('.chosen-drop').css('width' , '210px');
						$(this).find('.chosen-search input').css('width' , '200px');
					});
				})
				/**
				//or you can activate the chosen plugin after modal is shown
				//this way select element becomes visible with dimensions and chosen works as expected
				$('#modal-form').on('shown', function () {
					$(this).find('.modal-chosen').chosen();
				})
				*/
			
			});
		</script>
	</body>
</html>
</body>

</html>
