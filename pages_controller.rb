class PagesController < ApplicationController
	def index

	end

	def create
		@pages = Page.new(pages_params)

		if @pages.save
			redirect_to @pages
		else
			render 'new'
		end
	end
end
