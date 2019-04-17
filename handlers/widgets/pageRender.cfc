component output="false" displayname=""  {
	property name="siteTreeService"                  inject="siteTreeService";

	public any function index( event, rc, prc, args={} ) {
		pageDetails=siteTreeService.getPage(id=args.page);
		return renderViewlet( event="page-types.#pageDetails.page_type#", args={ id=args.page } );
	}

	private string function placeholder( event, rc, prc, args={} ) {
		return args.title;
	}
}