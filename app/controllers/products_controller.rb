class ProductsController < ApplicationController


	def new
      @product = Product.new
	end
	  
  def create
     #render :json => "sdfmdslkmflsdmf"
      @product = Product.new 
      @product.name = params[:name]
      @product.cost = params[:cost]
       if @product.save
          flash[:notce] ="product successfully create"
          redirect_to @product
       else
          flash[:error] = "product not create"
          render :action => 'new'
       end
  end
 
  def show
    @product = Product.find(params[:id])
    # puts "/////////////////////////////////////////////////"
    render :json => @product.inspect and return
  end




end
