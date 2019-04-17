<cfscript>
	body     = renderView();
	mainNav  = renderViewlet( "core.navigation.mainNavigation" );
	metaTags = renderView( "/general/_pageMetaForHtmlHead" );
	adminBar = renderView( "/general/_adminToolbar"        );

	header  = renderViewlet( "general.header" );
	footer  = renderViewlet( "general.footer" );

	event.include("css-bootstrap")
	     .include("css-layout")
	     .include("css/custom.css")
	     .include("css/mainStyle.css")
	     .include("css/bootstrap.min.css")
	     .include("css/font-awesome")
	     .include("css/bootstrap.css")
	     .include("css/favicon.css")
	     .include("css/sunbootstrap.min.css")
	     .include("css/carousel.min.css")
	     .include("css/carouseltheme.css")
	     .include("css/bootsnipp.css")
	     .include("css/styles.css");

    event.include("js-bootstrap")
	     .include("js-jquery")
	     .include("js/script.js")
	     .include("js/jquery.min.js")
	     .include("js/carousel.min.js")
	     .include("js/bootstrap.min.js");
</cfscript>

<cfoutput><!DOCTYPE html>
<html>
	<head>
		#metaTags#

		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		#event.renderIncludes( "css" )#

		<!--[if lt IE 9]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		<div id="navbarouter" class="navbarouter nopadding bg-success">
			<nav id="navbarprimary" class="navbar navbar-expand-md navbarprimary nopadding">
				<div class="container nopadding">
					#mainNav#
					<!--- <div class="header">#header#</div> --->
					#header#
					<!--- <div class="footer">
						<p>&copy; Pixl8 2013-#Year( Now() )#</p>
					</div> --->
				</div>
			</nav>
		</div>
		#body#
		#footer#
		#adminBar#
		#event.renderIncludes( "js" )#
	</body>
</html></cfoutput>