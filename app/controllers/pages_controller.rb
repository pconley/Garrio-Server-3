class PagesController < ApplicationController

  def show
  	@page = params[:page].downcase
  	template = "pages/#{@page}"
	  exists = lookup_context.template_exists?(template)
    if exists
    	render template: template
    else
    	redirect_to error_url
    end
  end

  def error
  	@page = 'error'
  	render template: "pages/error", :locals => {:page => 'error'}
  end

end