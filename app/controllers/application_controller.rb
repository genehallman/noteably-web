class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user_session, :current_user, :javascript_redirect
  before_filter :js_format_only, :except => [:index]
  before_filter :require_user, :only => [:app]

  def index
  end

  def app
  end
  
  def require_user
    unless current_user
      javascript_redirect new_user_session_path
      return false
    end 
  end 

  def require_no_user 
    if current_user
      redirect_to root_url
      return false 
    end 
  end
  
  def js_format_only
    respond_to do |format|
      format.html { redirect_to root_url; return false }
      format.js { return true }
    end
  end

  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end

    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.user
    end
    
    def javascript_redirect(path)
      render :partial => "/common/javascript_redirect", :locals => {:path => path}
    end
end
