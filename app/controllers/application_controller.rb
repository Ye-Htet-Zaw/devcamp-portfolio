class ApplicationController < ActionController::Base
	include SetSource

	include CurrentUserConcern
end
