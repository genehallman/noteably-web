class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user].only)
    @user.save
    javascript_redirect root_url
  end
end
