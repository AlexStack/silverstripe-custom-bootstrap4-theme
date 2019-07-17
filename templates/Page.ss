<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)

	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
 
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">


	<!-- JQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Custom CSS -->
	<% if $SiteConfig.CustomCssFile != '' %>
		<% require themedCSS($SiteConfig.CustomCssFile) %>
	<% else %>
		<% require themedCSS('custom') %>
	<% end_if %>

</head>
<body class="$ClassName.ShortName $URLSegment <% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>

	<!-- Header Start -->
	<% include Header %>
	<!-- Header End -->

	<div class="main-layout" role="main-layout">
		$Layout
	</div>


	<!-- Footer Start -->
	<% include Footer %>
	<!-- Footer End -->


	<!-- Bottom Javascript -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>

	<!-- Custom JS -->
	<% require themedJavascript('custom') %>

</body>
</html>
