class ProductsController < ApplicationController


	def new
      @product = Product.new
	end
	  
  def create
      @product = Product.new 
      @product.name = params[:name]
      @product.sname = params[:sname]
       if @product.save
      	 render :json => "successfully saved"
       else
          render :json => "not yet saved"
       end
  end
end
