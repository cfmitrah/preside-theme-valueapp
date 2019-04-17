component {
	property name="presideObjectService" inject="presideObjectService";

	private string function index( event, rc, prc, args ) {
		 args.testimonial = presideObjectService.selectManyToManyData(
			  objectName   = "testimonials"
			, propertyName = "addTestimonial"
		);
		return renderView(
			  view          = 'page-types/testimonials/index'
			, presideObject = 'testimonials'
			, args          = args
		);
	}
}
