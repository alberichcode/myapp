class HomeController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :index ]
  def index
    redirect_to shots_path if user_signed_in?
  end



end
