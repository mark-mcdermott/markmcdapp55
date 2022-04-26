module ApplicationHelper
  
  def page_title(page_title = '')
    base_title = "Hartl Rails Tutorial"
    "#{page_title} | #{base_title}"
  end
  
end
