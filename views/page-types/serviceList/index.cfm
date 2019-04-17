<cf_presideparam name="args.title"        field="page.title"       editable="false" />
<cf_presideparam name="args.main_content"  field="page.main_content" editable="false" />
<cf_presideparam name="args.icon_name"     field="serviceList.icon_name"    editable="false" />

<cfoutput>
	<div class="col-md-4 col-sm-6 mb-5">
		<i class="fa fa-#args.icon_name# fa-5x mb-4"></i>
		<h3 class="pb-2">#args.title#</h3>
		<p>#args.main_content#</p>
	</div>
</cfoutput>