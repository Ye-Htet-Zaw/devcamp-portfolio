class ApplicationController < ActionController::Base
	#include SetSource

	include CurrentUserConcern

	before_action :set_source

	def set_source
		session[:source] = params[:q] if params[:q]
	end

	before_action :set_page_defaults

	def set_page_defaults
    @page_title = "Devcamp Portfolio | My Portfolio Website"
    @seo_keywords = "Jordan Hudgens portfolio"
  end
end
