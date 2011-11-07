module ApplicationHelper
  def submit_link(name)
    link_to name, "javascript:void(0)", :onclick => "$(this).parent('form').submit();", :class => "button"
  end
end
