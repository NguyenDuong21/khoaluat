<!-- BEGIN: main -->
<ul class="block_tophits list-none list-items">
    <!-- BEGIN: newloop -->
    <!-- BEGIN: imgblock -->
    <div class="on-main-layout">
		<div class="on-left-main-layout">
			<div class="in-main-layout">		
				<img src="{blocknews.imgurl}" alt="{blocknews.title}" width="100%" height="auto">
			</div>
		</div>
			<div class="on-right-main-layout">
				<div class="in-main-layout">
                    <a href="{blocknews.link}" {blocknews.target_blank}class="display-inline-block"><span class="name-layout">{blocknews.title}</span></a>
                    <div class="calendar"><span class="glyphicon glyphicon-calendar"></span> 13/06/2021</div>
                     <p class="des-layout"> ...</p>

					<a class="continue-read" href="{blocknews.link}"<i class="fa fa-arrow-circle-right" aria-hidden="true"></i> Xem chi tiết</a>
				</div>
		</div>
	</div>
        <!-- END: imgblock -->
    <!-- END: newloop -->
</ul>
<!-- BEGIN: tooltip -->
<script type="text/javascript">
$(document).ready(function() {$("[data-rel='block_news_tooltip'][data-content!='']").tooltip({
    placement: "{TOOLTIP_POSITION}",
    html: true,
    title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
});});
</script>
<!-- END: tooltip -->
<!-- END: main -->
