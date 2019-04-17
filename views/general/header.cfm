<cfoutput>
	<div class="icons-top">
		<span class="sf_icons_ctmzr">
			<cfloop query="#args.socialLinks#">
				<a title="" target="_blank" href="#link#" data-original-title="#name#" class="icons">
					<span class="fa fa-#name# bgtoph-icon-clr" aria-hidden="true"></span>
				</a>
			</cfloop>
		</span>
	</div>
</cfoutput>