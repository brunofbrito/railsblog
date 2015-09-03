module ApplicationHelper
  def title
    title = Settings.find(1).title
  end  

  def background
    background = Settings.find(1).bground.url
  end

  def facebook
    Settings.find(1).facebook
  end

  def twitter
    Settings.find(1).twitter
  end

  def instagram
    Settings.find(1).instagram
  end

  def youtube
    Settings.find(1).youtube
  end

  def linkedin
    Settings.find(1).linkedin
  end

  def github
    Settings.find(1).github
  end
end
