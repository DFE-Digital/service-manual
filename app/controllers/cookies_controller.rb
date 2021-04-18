class CookiesController < ApplicationController
  def preferences; end

  def create_preferences
    if params[:cookie_consent].blank?
      flash[:error] = 'Select yes if you accept Google Analytics cookies'
      redirect_to(cookie_preferences_path)
    else
      user_preference = params[:cookie_consent]
      cookies['cookies_preferences_set'] = { value: user_preference, expires: 6.months.from_now }

      flash[:success] = 'Your cookie preferences have been saved'
      redirect_to root_path
    end
  end
end
