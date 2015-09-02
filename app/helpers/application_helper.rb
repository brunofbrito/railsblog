module ApplicationHelper
  def title
    title = Settings.find(1).title
  end  
end
