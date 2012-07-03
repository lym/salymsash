module ApplicationHelper
  #Creates a submit button with a given name with the cancel link
  # Accepts two arguments: form object and the cancel link name
  def submit_or_cancel(form, name='Cancel')
	form.submit + " or " + link_to(name, 'javascript:history.go(-1);', :class => 'cancel')
  end
end
