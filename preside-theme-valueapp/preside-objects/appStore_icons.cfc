/**
 * @datamanagerGroup Mysite
 * @datamanagerGridFields name,link
 * @labelfield name
 */
component {
	property name="name"  type="string" dbtype="varchar" control="textInput";
	property name="link"  type="string" dbtype="varchar" control="textInput";
}