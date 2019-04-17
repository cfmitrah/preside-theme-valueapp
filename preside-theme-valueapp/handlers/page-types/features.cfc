component {
	property name="presideObjectService" inject="presideObjectService";

	private string function index( event, rc, prc, args ) {
		 args.images = presideObjectService.selectManyToManyData(
			  objectName   = "features"
			, propertyName = "sliderImages"
		);

		return renderView(
			  view          = 'page-types/features/index'
			, presideObject = 'features'
			, args          = args
		);
	}
}