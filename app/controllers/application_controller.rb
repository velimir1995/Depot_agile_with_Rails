class ApplicationController < ActionController::Base
  before_action :authorize
  before_action :set_i18n_locale_from_session
  
  protected

  def set_i18n_locale_from_session
    if session[:lenguage]
      if I18n.available_locales.map(&:to_s).include?(session[:lenguage])
        I18n.locale = session[:lenguage]
      else
        flash.now[:notice] =
          "#{sessioin[:language]} translation not available"
          logger.error flash.now[:notice]
      end
    end
  end


  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end

end
