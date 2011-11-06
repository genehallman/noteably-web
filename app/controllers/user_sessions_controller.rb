class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
  
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    @user_session.save
    javascript_redirect app_url
  end
  
  def destroy
    current_user_session.destroy
    javascript_redirect root_url
  end
end
