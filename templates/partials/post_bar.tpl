<span class="tags">
	<!-- BEGIN tags -->
	<a href="{relative_path}/tags/{tags.value}">
	<span class="tag-item" data-tag="{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color: {tags.bgColor};<!-- ENDIF tags.bgColor -->">{tags.value}</span>
	<span class="tag-topic-count">{tags.score}</span></a>
	<!-- END tags -->
</span>

<div class="lv-actions actions post-bar">
	<span class="loading-indicator btn pull-left" done="0" style="display:none;">
		<span class="hidden-xs">[[topic:loading_more_posts]]</span> <i class="fa fa-refresh fa-spin"></i>
	</span>

	<li class="post-count">
		<span component="topic/post-count" title="{postcount}">{postcount}</span><br />
		<small>[[global:posts]]</small>
	</li>
	<li class="view-count">
		<span title="{viewcount}">{viewcount}</span><br />
		<small>[[global:views]]</small>
	</li>

	<!-- IMPORT partials/topic/reply-button.tpl -->

</div>


