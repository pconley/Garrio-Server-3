class DashboardsController < ApplicationController

  def show
  	@dashboard = params[:dashboard].downcase
  	template = "dashboards/#{@dashboard}"
    puts "*** dashboard = #{@dashboard}"
	  exists = lookup_context.template_exists?(template)
    if exists
    	render template: template
    else
    	redirect_to error_url
    end
  end

end
