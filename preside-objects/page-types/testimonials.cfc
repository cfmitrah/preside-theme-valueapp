component  {
	property name="addTestimonial" relationship="many-to-many" relatedTo="testimonial" ondelete="cascade-if-no-cycle-check" onupdate="cascade-if-no-cycle-check";
}
