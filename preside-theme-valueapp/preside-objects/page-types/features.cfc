component {
	property name="sliderImages"  relationship="many-to-many" relatedTo="asset" allowedTypes="image" ondelete="cascade-if-no-cycle-check" onupdate="cascade-if-no-cycle-check";
	property name="featureTitle"  type="string" dbtype="varchar";
	property name="price"         type="string" dbtype="varchar";
	property name="addFeature"    type="string" dbtype="text";
}