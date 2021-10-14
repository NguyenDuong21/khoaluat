<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/css/slider.css">
<div class="border-slider" style="width: 100%;">
			<div class="slider">
		        <div id="banner-slide">
			        <ul class="bjqs" >
					<!-- BEGIN: loop_slide -->
			        	<li class="bjqs-slide" ><a href="{slide.link}"><img src="{slide.image}" title="{slide.title}"></a><p class="bjqs-caption">{slide.title}</p></li>
					<!-- END: loop_slide -->
			        </ul>
	      		<ul class="bjqs-controls v-centered"><li class="bjqs-prev"><a href="#" data-direction="previous" style="top: 50%;"><span class="glyphicon glyphicon-chevron-left"></span></a></li><li class="bjqs-next"><a href="#" data-direction="forward" style="top: 50%;"><span class="glyphicon glyphicon-chevron-right"></span></a></li></ul></div>
		    </div>
		    <div id="news" class="row">
	    		<!-- BEGIN: loop_news -->
					<div class="col col-lg-8 col-md-8 col-sm-8 col-xs-8 padding-left-5 padding-right-5">
						<div class="box-news">
							<div class="image-001"><img src="{new.image}" height="170px" width="100%"></div>
							<div class="title-001"><a href="{new.link}">{new.title}</a></div>
						</div>
					</div>
		    	<!-- END: loop_news -->
		    	
		    			    </div>
		    <div class="chitiet" style="text-align:right;"><a href="http://khoatiengtrungquoc.hou.edu.vn/tin-tuc/">Xem thêm <i class="fa fa-angle-double-right" aria-hidden="true"></i> </a></div>
   		</div>
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/slider.js"></script>
<script type="text/javascript">
	   jQuery(document).ready(function($) {
  
		  $('#banner-slide').bjqs({
		    // animtype      : 'slide',
		    height        : 400,
		    width         : 755,
		    responsive    : true,
		    // randomstart   : true
		  });
		  
		});
  </script>
<!-- END: main -->