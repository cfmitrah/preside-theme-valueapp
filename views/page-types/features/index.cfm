<cfparam name="args.featureTitle" field="features.featureTitle" editable="false" />
<cfparam name="args.price"        field="features.price"        editable="false" />
<cfparam name="args.addFeature"   field="features.addFeature"   editable="false" />

<cfoutput>
	<section id="features" class="bg-lgray">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6 pt-4">
                    <div id="carouselExampleIndicators1" class="carousel slide features" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <cfloop index="i" from="1" to="#args.images.recordcount#">
								<li data-target="##carouselExampleIndicators" data-slide-to="#i#" class=""></li>
							</cfloop>
                        </ol>
                        <div class="carousel-inner">
                            <cfloop query="args.images">
								<div class="carousel-item <cfif #args.images.currentrow# EQ 1>active</cfif>">
									<img class="d-block w-100" src="#event.buildLink(assetID='#id#')#" >
								</div>
							</cfloop>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6 pt-4">
                    <div class="header-right-contents">
                        <h4 class="text-gray text-xxlarge">#args.featureTitle#</h4>
						<ul class="list-unstyled mt-5 feature-listing">
							#args.addFeature#
						</ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="desgned-by text-center p-5 bg-success text-white">
        <a class="btn btn-danger btn-lg text-white" href="https://www.fiverr.com/sunlimetech/design-and-fix-your-bootstrap-4-issues" target="_blank" role="button">#args.price#</a>
    </div>
</cfoutput>