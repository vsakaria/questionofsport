class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def passthru
    raise request.env["omniauth.auth"].to_yaml
  end

  def failure
    raise request.env["omniauth.auth"].to_yaml
  end


  def all

    raise request.env["omniauth.auth"].to_yaml
    # user = User.from_omniauth(request.env["omniauth.auth"])
  #   if user.persisted?
  #     sign_in_and_redirect root, notice: "Signed in!"
  #   else
  #     session["devise.user_attributes"] = user.attributes
  #     redirect_to root_url
  #   end
  end

  alias_method :twitter, :all
end
