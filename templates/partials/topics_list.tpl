<div class="lv-body" component="category" id="topics-container" data-nextstart="{nextStart}">
	<!-- BEGIN topics -->
	<div component="category/topic" class="lv-item media<!-- IF topics.deleted --> deleted<!-- ENDIF topics.deleted --><!-- IF topics.unread --> unread<!-- ENDIF topics.unread -->" data-tid="{topics.tid}" data-cid="{topics.cid}">
		<!-- IF showSelect -->
        <div class="checkbox pull-left">
            <label>
                <input type="checkbox" class="select">
                <i class="input-helper"></i>
            </label>
        </div>
        <!-- ENDIF showSelect -->

		<div class="pull-left hidden-xs">
        	<a href="{relative_path}/user/{topics.user.userslug}">
            	<img class="lv-img-sm" src="{topics.user.picture}" title="{topics.user.username}">
        	</a>
    	</div>
    	<div class="media-body">
    		<div class="lv-title">
    			<a href="{relative_path}/topic/{topics.slug}"><strong><!-- IF topics.pinned --><i class="fa fa-thumb-tack"></i><!-- ENDIF topics.pinned --> <!-- IF topics.locked --><i class="fa fa-lock"></i><!-- ENDIF topics.locked --></strong>
					<span class="topic-title">{topics.title}
				</a>
			</div>

			<small class="lv-small">
            	[[global:posts]] {topics.postcount} | [[global:views]] {topics.viewcount} | 
            	<!-- IF topics.user.userslug -->
					[[global:posted_in_ago_by, <a href="{relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>, <span class="timeago" title="{topics.relativeTime}"></span>, {topics.user.username}]]
				<!-- ELSE -->
					[[global:posted_in_ago_by_guest, <a href="{relative_path}/category/{topics.category.slug}"><i class="fa {topics.category.icon}"></i> {topics.category.name}</a>, <span class="timeago" title="{topics.relativeTime}"></span>]]
				<!-- ENDIF topics.user.userslug -->
			</small>

			<ul class="lv-attrs hidden-xs">
                <!-- IF topics.tags.length -->
					<!-- BEGIN tags -->
						<li><a href="{relative_path}/tags/{topics.tags.value}"><span class="tag-item" data-tag="{topics.tags.value}" style="<!-- IF topics.tags.color -->color: {topics.tags.color};<!-- ENDIF topics.tags.color --><!-- IF topics.tags.bgColor -->background-color: {topics.tags.bgColor};<!-- ENDIF topics.tags.bgColor -->">{topics.tags.value}</span><span class="tag-topic-count">{topics.tags.score}</span></a></li>
					<!-- END tags -->
				<!-- ENDIF topics.tags.length -->
            </ul>

			<div class="lv-actions actions hidden-xs">
                <ul>
                    <!-- IF topics.unreplied -->
				<li><a href="{relative_path}/topic/{topics.slug}" itemprop="url">[[category:no_replies]]</a></li>
				<!-- ELSE -->
				<li><a href="<!-- IF topics.teaser.user.userslug -->{relative_path}/user/{topics.teaser.user.userslug}<!-- ELSE -->#<!-- ENDIF topics.teaser.user.userslug -->">{topics.teaser.user.username}</a>
				<a href="{relative_path}/topic/{topics.slug}/{topics.teaser.index}">
					[[global:replied_ago, <span class="timeago" title="{topics.teaser.timestamp}"></span>]]
				</a></li>
				<!-- ENDIF topics.unreplied -->
                </ul>
            </div>
		</div>
	</div>
	<!-- END topics -->
</div>