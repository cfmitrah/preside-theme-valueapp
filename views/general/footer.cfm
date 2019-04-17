<cfoutput>
	<section id="footer">
		<footer>
			<div class="container">
				<div class="row flex-center">
					<cfloop query="#args.socialLinks#">
						<a href="#link#"><i class="fa fa-#name# fa-3x mr-4"></i></a>
					</cfloop>
					<div class="col-sm-12 text-center pt-4">
						<a href="##" class="text-medium mr-3">Terms of use</a><span class="mr-3">|</span>
						<a href="##" class="text-medium mr-3">Support</a><span class="mr-3">|</span>
						<a href="##" class="text-medium mr-3">Help</a>
					</div>
				</div>
			</div>
		</footer>
	</section>
	<div class="desgned-by text-center p-3 bg-success text-white">
		<p class="mb-0">Design and developed by <a href="http://www.mitrahsoft.com/" class="text-white" target="_blank" title="Web, andriod and IOS development">Mitrahsoft</a> with <i class="fa fa-heart text-danger"></i></p>
	</div>
</cfoutput>