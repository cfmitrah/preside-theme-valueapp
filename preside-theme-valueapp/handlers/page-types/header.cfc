component {
	property name="presideObjectService" inject="presideObjectService";

	private string function index( event, rc, prc, args ) {
		 args.images = presideObjectService.selectManyToManyData(
			  objectName   = "header"
			, propertyName = "sliderImages"
		);
		 args.appStoreIcons = presideObjectService.selectManyToManyData(
			  objectName   = "header"
			, propertyName = "appStore"
		);
		return renderView(
			  view          = 'page-types/header/index'
			, presideObject = 'header'
			, args          = args
		);
	}
}