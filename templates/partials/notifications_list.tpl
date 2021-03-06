
<!-- IF !notifications.length -->
<a class="no-notifs lv-item">[[notifications:no_notifs]]</a>
<!-- ENDIF !notifications.length -->

<!-- BEGIN notifications -->
<a class="lv-item" href="{notifications.path}">
    <div class="media {notifications.readClass}" data-nid="{notifications.nid}">
        <div class="pull-left">
            <!-- IF notifications.image -->
			<!-- IF notifications.from -->
			<img class="user-picture" src="{notifications.image}" />
			<!-- ENDIF notifications.from -->
			<!-- ELSE -->
			<img class="user-picture" src="{notifications.image}"/>
			<!-- ENDIF notifications.image -->
        </div>
        <div class="pull-right mark-read" aria-label="Mark Read"></div>
        <span class="pull-right relTime">{notifications.timeago}</span>
        <div class="media-body">
            <small class="lv-small">{notifications.bodyShort}</small>
        </div>
    </div>
</a>
<!-- END notifications -->
