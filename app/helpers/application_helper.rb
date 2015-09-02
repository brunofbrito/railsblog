module ApplicationHelper
  def title
    title = Settings.find(1).title
  end  

  def background
    background = Settings.find(1).bground.url
  end
end
