<cfparam name="args.serviceIcon" />
<cfparam name="args.serviceName"/>
<cfparam name="args.serviceDescription"  />

<cfoutput>
	<div class="col-md-4 col-sm-6 mb-5">
		<i class="fa fa-#args.serviceIcon# fa-5x mb-4"></i>
		<h3 class="pb-2">#args.serviceName#</h3>
		<p>#args.serviceDescription#</p>
	</div>
</cfoutput>