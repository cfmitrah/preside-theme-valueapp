component {

	private function index( event, rc, prc, args={} ) {
		return renderView(
			  view = 'page-types/serviceList/index'
			, presideObject = 'serviceList'
			, args = args
		 );
	}
}
