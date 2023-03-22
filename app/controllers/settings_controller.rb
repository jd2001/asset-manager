class SettingsController < ApplicationController
  skip_authorization_check
  
  def home
    @host_types = HostType.all
    @info_types = InfoType.all
    @priorities = Priority.all
  end
end
