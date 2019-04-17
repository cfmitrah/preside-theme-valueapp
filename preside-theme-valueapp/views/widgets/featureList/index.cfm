<cfparam name="args.featureIcon"   />
<cfparam name="args.featureName"  />
<cfparam name="args.featureDescription" />

<cfoutput>
	<li>
	    <i class="fa fa-#args.featureIcon#"></i>
		<span class="text-success text-large">#args.featureName#</span>
		<p>#args.featureDescription#</p>
	</li>
</cfoutput>