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
          render :json => "successfully create product"
       else
          flash[:error] = "product not create"
          render :action => 'new'
       end
  end
 
  def show
    @product = Product.find(params[:id])
    render :json => "successfully show product"
  end

  def edit
    @product = Product.find(params[:id])
    render :json => "successfully show product"
  end
  
  def update
    @product = Product.find(params[:id])
    #puts params.inspect
    @product.name = params[:product][:name]
    @product.cost = params[:product][:cost]
    @product.save
    render :json => "successfully updated product"
  end

  def destroy
   @product = Product.find(params[:id])
   Product.destroy(@product.id)
   flash[:notice] = "deleted product successfully"
   #render :json => "successfully deleted product"
    redirect_to {action => "index"}
   
  end

  def index
    render :json => "dflkflsdf"
  end

end
