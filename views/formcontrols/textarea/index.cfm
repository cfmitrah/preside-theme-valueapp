<cfscript>
	inputName    = args.name         ?: "";
	inputId      = args.id           ?: "";
	inputClass   = args.class        ?: "";
	placeholder  = args.placeholder  ?: "";
	placeholder  = HtmlEditFormat( translateResource( uri=placeholder, defaultValue=placeholder ) );
	defaultValue = args.defaultValue ?: "";
	maxlength    = args.maxlength    ?: "";
	minlength    = args.minlength    ?: "";

	value  = event.getValue( name=inputName, defaultValue=defaultValue );
	if ( not IsSimpleValue( value ) ) {
		value = "";
	}

	value = HtmlEditFormat( value );
</cfscript>

<cfoutput>
	<textarea id="#inputId#" placeholder="text area" name="#inputName#" class="emailBox #inputClass# form-control autosize-transition<cfif isNumeric( maxlength ) and maxlength gt 0> limited</cfif>"<cfif isNumeric( maxlength ) and maxlength gt 0> data-maxlength="#maxLength#"</cfif> <cfif isNumeric( minlength ) and minlength gt 0> minlength="#minlength#"</cfif> tabindex="#getNextTabIndex()#">#value#</textarea>
</cfoutput>