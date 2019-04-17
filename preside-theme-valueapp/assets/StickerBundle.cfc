/**
 * Sticker bundle configuration file. See: http://sticker.readthedocs.org/
 */
component {

	public void function configure( bundle ) {
		//js

		bundle.addAsset( id="js/script.js",	        path="/js/script.js" );
		// bundle.addAsset( id="js/jq-carousel.min.js",url="https://code.jquery.com/jquery-1.10.2.min.js" );
		bundle.addAsset( id="js/jquery.min.js",	    url="//code.jquery.com/jquery-1.11.1.min.js" );
		bundle.addAsset( id="js/bootstrap.min.js",	url="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" );
		bundle.addAsset( id="js/carousel.min.js",	url="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js" );

		//CSS
		bundle.addAsset( id="css/custom.css",           path="/css/custom.css" );
		bundle.addAsset( id="css/bootsnipp.css",        url="https://bootsnipp.com/css/fullscreen.css" );
		bundle.addAsset( id="css/styles.css",           path="/css/styles.css" );
		bundle.addAsset( id="css/bootstrap.min.css",    path="/css/bootstrap.min.css" );
		bundle.addAsset( id="css/mainStyle.css",        path="/css/mainStyle.css" );
		bundle.addAsset( id="css/carouseltheme.css",    url="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.theme.min.css" );
		bundle.addAsset( id="css/carousel.min.css",     url="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.css" );
		bundle.addAsset( id="css/favicon.css",     	    url="https://sunlimetech.com/portfolio/valueapp/favicon.ico" );
		bundle.addAsset( id="css/sunbootstrap.min.css", url="https://sunlimetech.com/portfolio/valueapp/css/bootstrap.min.css" );
		bundle.addAsset( id="css/bootstrap.css",        url="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" );
		bundle.addAsset( id="css/font-awesome",         url="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" );


		bundle.addAssets(
			  directory   = "/"
			, match       = function( filepath ){ return ReFindNoCase( "\.(js|css)$", filepath ); }
			, idGenerator = function( filepath ){
				var fileName = ListLast( filePath, "/" );
				var id       = ListLast( filename, "." ) & "-" & ReReplace( filename, "\.(js|css)$", "" );
				return id;
			  }
		);

		// bundle.asset( "js/jq-carousel.min.js" ).before( "css/bootsnipp.css" );
		bundle.asset( "js/jquery.min.js" ).before("*");
		bundle.asset( "css/bootsnipp.css" ).after("js/jquery.min.js");
		bundle.asset( "js-bootstrap" ).dependsOn( "js-jquery" );
		bundle.asset("js/jquery.min.js").before("js/jquery.min.js");

		bundle.asset( "css-bootstrap" ).before( "*" );
		bundle.asset( "css/sunbootstrap.min.css" ).before("css/font-awesome");
		bundle.asset( "css/sunbootstrap.min.css" ).before("css/carousel.min.css");
		bundle.asset( "css/font-awesome" ).before("css/carousel.min.css");

	}

}