/**
 * @datamanagerGroup Mysite
 * @datamanagerGridFields profileImage,name,designation,testimonial
 * @labelfield name
 */
component {
	property name="profileImage" relationship="many-to-one" relatedTo="asset" allowedTypes="image" ondelete="cascade-if-no-cycle-check" onupdate="cascade-if-no-cycle-check";
	property name="name"         type="string" dbtype="varchar" control="textInput";
	property name="designation"  type="string" dbtype="varchar" control="textInput";
	property name="testimonial"  type="string" dbtype="varchar" control="textArea";
}