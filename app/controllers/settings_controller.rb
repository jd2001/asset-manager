class SettingsController < ApplicationController
  skip_authorization_check
  
  def home
    @page = 'Settings'
    @host_types = HostType.all
    @info_types = InfoType.all
    @priorities = Priority.all
  end
end
