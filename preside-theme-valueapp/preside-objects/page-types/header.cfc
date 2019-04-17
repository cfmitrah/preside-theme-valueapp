/**
* @isSystemPageType  true
*/
component {
	property name="sliderImages" relationship="many-to-many" relatedTo="asset" allowedTypes="image" ondelete="cascade-if-no-cycle-check" onupdate="cascade-if-no-cycle-check";
	property name="appLogo"      relationship="many-to-one"  relatedTo="asset" allowedTypes="image" ondelete="cascade-if-no-cycle-check" onupdate="cascade-if-no-cycle-check";
	property name="aboutApp" type="string" dbtype="varchar";
	property name="appStore"     relationship="many-to-many" relatedTo="appStore_icons" ondelete="cascade-if-no-cycle-check" onupdate="cascade-if-no-cycle-check";
}