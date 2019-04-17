component {

	private function index( event, rc, prc, args={} ) {
		return renderView(
			  view = 'page-types/subscription/index'
			, presideObject = 'subscription'
			, args = args
		 );
	}
}
