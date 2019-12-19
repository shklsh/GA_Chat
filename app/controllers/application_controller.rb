class ApplicationController < ActionController::Base
  include Knock::Authenticable
  skip_before_action :verify_authenticity_token
  protect_from_forgery
    def fallback_index_html
      render :file => 'public/index.html'
    end
end
