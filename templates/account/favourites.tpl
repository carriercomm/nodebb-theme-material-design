
<!-- IMPORT partials/account_menu.tpl -->
<div class="favourites">
	<!-- IF !posts.length -->
		<div class="alert alert-warning">[[topic:favourites.has_no_favourites]]</div>
	<!-- ELSE -->
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<!-- IMPORT partials/posts_list.tpl -->
			</div>
		</div>
	</div>
	<!-- ENDIF !posts.length -->
</div>

<!-- IMPORT partials/variables/account.tpl -->