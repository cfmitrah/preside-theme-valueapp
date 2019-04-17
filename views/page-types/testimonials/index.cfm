<cfoutput>
	<section id="testiminials">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
					<h1 class="text-center mb-2"><i class="fa  fa-quote-left  text-success"></i></h1>
                    <div id="testimonial-slider" class="owl-carousel">
						<cfloop query="args.testimonial">
	                        <div class="testimonial">
	                            <div class="pic">
	                                <img src="#event.buildLink(assetID='#args.testimonial.profileImage#')#" class="img-rounded">
	                            </div>
	                            <div class="testimonial-profile">
	                                <h3 class="title">#args.testimonial.name#</h3>
	                                <span class="post">#args.testimonial.designation#</span>
	                            </div>
	                            <p class="description">
	                                #args.testimonial.testimonial#
	                            </p>
	                        </div>
                        </cfloop>
                    </div>
                </div>
			</div>
        </div>
    </section>
</cfoutput>