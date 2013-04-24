module ApplicationHelper
  #Returns a base title if the page doesn't provide one or a custom one based on the title provided
  def full_title(page_title)
    base_title="Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
