class HomeController < ApplicationController
  def index
  	begin
  	if params[:ticker] == ""
  		@nothing = "Hey! You Forgot to Enter A Symbol"
  	elsif params[:ticker]
  		@api = StockQuote::Stock.new(api_key: 'pk_e4c67932d7634d978e14d4f93934c53f')
  		@stock = StockQuote::Stock.quote(params[:ticker])
  	end
  	rescue RuntimeError
  		@error = "Hey! That stock symbol doesn't exist. Please try again"
  	end
  end
end
