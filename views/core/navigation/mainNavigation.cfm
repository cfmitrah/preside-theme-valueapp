<cfscript>
	menuItems       = args.menuItems ?: [];
	delayRestricted = IsTrue( args.delayRestricted ?: true );

	ulNestedClass           = args.ulNestedClass           ?: 'dropdown-menu';
	liCurrentClass          = args.liCurrentClass          ?: 'active';
	liHasChildrenClass      = args.liHasChildrenClass      ?: 'dropdown';
	liHasChildrenAttributes = args.liHasChildrenAttributes ?: '';
	aCurrentClass           = args.aCurrentClass           ?: '';
	aHasChildrenClass       = args.aHasChildrenClass       ?: 'dropdown-toggle';
	aHasChildrenAttributes  = args.aHasChildrenAttributes  ?: 'data-toggle="dropdown"';
</cfscript>

<cfoutput>
	<div id="collapse-navbarprimary" class="collapse navbar-collapse">
		<cfloop array="#menuItems#" index="i" item="item">
			<cfif IsTrue( item.hasRestrictions ?: "" )>
				#renderViewlet(
					  event   = "core.navigation.restrictedMenuItem"
					, args    = { menuItem=item, view="/core/navigation/mainNavigation" }
					, delayed = delayRestricted
				)#
				<cfcontinue />
			</cfif>
			<cfset hasChildren = item.children.len() />
		        <ul id="primary-menu" class="nav navbar-nav primary-menu">
					<li class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item current_page_item <cfif item.active>#liCurrentClass#</cfif><cfif hasChildren> #liHasChildrenClass#</cfif>"<cfif hasChildren> #liHasChildrenAttributes#</cfif>>
						<a class="nav-link <cfif item.active>#aCurrentClass#</cfif><cfif hasChildren> #aHasChildrenClass#</cfif>" href="#event.buildLink( page=item.id )#" <cfif hasChildren>#aHasChildrenAttributes#</cfif>>#item.title#<cfif hasChildren> <span class="caret"></span></cfif></a>
					</li>
				</ul>
		</cfloop>
	</div>
</cfoutput>