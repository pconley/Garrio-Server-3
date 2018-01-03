class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_domain

  def set_domain
  	@domain = URI.parse(request.original_url).host
  	# puts "*** #{host}"
  	# @domain = host.split('.')[-2]
  end
end
