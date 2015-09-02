class SettingsController < ApplicationController
  
  def edit
    if Settings.exists? == false
      Settings.create
      @settings = Settings.find(1)
    else
      @settings = Settings.find(1)
    end
  end

  def update
    Settings.update(1, settings_params)
    redirect_to root_path
  end

  private
  def settings_params
      params.require(:settings).permit(:title, :logo, :bground, :facebook, :twitter, :instagram, :youtube, :linkedin, :github)
    end
end
