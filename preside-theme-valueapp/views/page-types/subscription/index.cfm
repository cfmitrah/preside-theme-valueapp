<cf_presideparam name="args.icon_name"         field="subscription.icon_name"         editable="false" />
<cf_presideparam name="args.subscriptionTitle" field="subscription.subscriptionTitle" editable="false" />
<cf_presideparam name="args.aboutSubscription" field="subscription.aboutSubscription" editable="false" />
<cf_presideparam name="args.addFormItem"       field="subscription.addFormItem"       editable="false" />

<cfoutput>
	<section id="sunscription" class="bg-lgray">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <i class="fa fa-#args.icon_name# fa-4x text-green  mb-3"></i>
                    <h3 class="text-gray">#args.subscriptionTitle#</h3>
                    <p>#args.aboutSubscription#</p>
                </div>
            </div>
			<div class="row">
			  <div class="col-lg-3"></div>
			  <div class="col-lg-6" style="right:300px;">
					#args.addFormItem#
			  </div>
			  <div class="col-lg-3"></div>
        </div>
    </section>
</cfoutput>