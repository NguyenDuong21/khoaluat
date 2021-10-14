<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="row">
	<div class="col-md-6" id="about">
        [ABOUT]
    </div>
    <div class="col-md-12">
        [NEWS]
    </div>
	<div class="col-md-6" id="top_right">
		[TOPHITS]
	</div>
</div>
<div class="row">
    <div class="col-md-24">
		{MODULE_CONTENT}
		[INTRO]
	</div>
</div>
<div class="row">
    <div class="col-md-8" id="laws">
		[LAWS]
	</div>
    <div class="col-md-16" id="chuyenmuc">
		[CHUYENMUC]
	</div>
</div>
<div class="row" id="bottom">
	<div class="col-md-6 col-sm-12 col-xs-24"  id="left_bottom">
        [STATISTICS]
    </div>
    <div class="col-md-12 col-sm-24" id="main_bottom">
        [BOTTOM_ADS]
    </div>
	<div class="col-md-6 col-sm-12 col-xs-24" id="right_bottom">
		[VOTING]
	</div>
</div>
<div class="row" id="slide">
	[SLIDE]
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->