component output="false" displayname=""  {
	property name="presideObjectService" inject="presideObjectService";

	public function header(event, rc, prc, args={}){
		args.socialLinks=presideObjectService.selectData(
			  objectName="social_icons"
			, selectFields=[ "name", "link"]
		);
		return renderView( view="general/header", args=args );
	}

	public function footer(event, rc, prc, args={}){
		args.socialLinks=presideObjectService.selectData(
			  objectName="social_icons"
			, selectFields=[ "name", "link"]
		);
		return renderView( view="general/footer", args=args );
	}

}