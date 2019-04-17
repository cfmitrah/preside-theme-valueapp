<cf_presideparam name="args.serviceTitle"  field="services.serviceTitle"  editable="false" />
<cf_presideparam name="args.serviceSlogan" field="services.serviceSlogan" editable="false" />
<cf_presideparam name="args.addService"    field="services.addService"    editable="false" />

<cfoutput>
	<section id="services" class="bg-success text-white mt-1">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<h2 class="mt-4">#args.serviceTitle#</h2>
					<p class="pt-2 pb-4">#args.serviceSlogan#</p>
				</div>
			</div>
			<div class="row text-center pt-4">
				#args.addService#
			</div>
		</div>
	</section>
</cfoutput>