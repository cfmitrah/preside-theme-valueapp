<cf_presideparam name="args.appLogo"      field="header.appLogo"      editable="false" />
<cf_presideparam name="args.aboutApp"     field="header.aboutApp"     editable="false" />

<cfoutput>
	<section id="header">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-5">
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
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
				<div class="col-sm-12 col-md-7 pt-4 text-sm-center text-md-left text-center">
					<div class="header-right-contents pt-5">
						<img class="img-fluid mb-5" src="#event.buildLink(assetID='#args.appLogo#')#" alt="Value App" />
						<h1 class="text-large pt-1 mb-5">#args.aboutApp#</h1>
						<p>
							<button type="button" class="btn btn-outline-success btn-lg px-5 text-uppercase mr-md-4 mr-sm-0 btn-rounded strong mb-3">Download</button>
							<button type="button" class="btn btn-outline-secondary btn-lg px-5 text-uppercase btn-rounded strong mb-3">Learn More</button>
						</p>
						<div class="icons" id="headerIcon">
							<cfloop query="args.appStoreIcons">
								<a href="##!"><i class="fa fa-#name# fa-2x text-success mr-5"></i></a>
							</cfloop>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</cfoutput>