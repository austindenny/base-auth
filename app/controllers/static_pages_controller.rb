class StaticPagesController < ApplicationController

  before_action :authenticate_user, only: [:auth]

  def home
    render json: { service: 'auth-api', status: 200 }
  end

  def auth
    render json: { status: 200, msg: "You are currently logged in as #{current_user.username}" }
  end

end
