<!-- IF !notifications.length -->
<li class="no-notifs"><a>[[notifications:no_notifs]]</a></li>
<!-- ENDIF !notifications.length -->

<!-- BEGIN notifications -->
<li class="{notifications.readClass} has-action-left" data-nid="{notifications.nid}">
	<div class="list-action-left">
	<!-- IF notifications.image -->
	<!-- IF notifications.from -->
	<a href="{relative_path}/user/{notifications.user.userslug}"><img src="{notifications.image}" /></a>
	<!-- ENDIF notifications.from -->
	<!-- ELSE -->
	<img src="{notifications.image}" />
	<!-- ENDIF notifications.image -->
	</div>

	<div class="pull-right mark-read" aria-label="Mark Read"></div>
	<div class="list-content">
	<a href="{notifications.path}">
		<span class="pull-right relTime">{notifications.timeago}</span>
		<span class="text">{notifications.bodyShort}</span>
	</a>
	</div>
	<div class="clear"></div>
</li>
<!-- END notifications -->