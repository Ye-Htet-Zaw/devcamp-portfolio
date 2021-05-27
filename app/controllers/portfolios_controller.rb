class PortfoliosController < ApplicationController
	def index
		@portfolio_item = Portfolio.all
		
	end
	def new
		@portfolio_items = Portfolio.new
	end

	def create
	    @portfolio_items = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

	    respond_to do |format|
	      if @portfolio_items.save
	        format.html { redirect_to portfolios_path, notice: "Your Portfolio Item was successfully created." }
	      else
	        format.html { render :new, status: :unprocessable_entity }
	      end
	   end
  	end
end
