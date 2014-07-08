class ProductsController < ApplicationController


	def new
      @product = Product.new
	end
	  
  def create
      @product = Product.new 
      @product.name = params[:name]
      @product.cost = params[:cost]
        if @product.save
          flash[:notce] ="product successfully create"
          respond_to do |format|
            format.json { render json: @product }
          end
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
    @product.name = params[:product][:name]
    @product.cost = params[:product][:cost]
      respond_to do |format|
        if @product.save
           format.json { render json: @product }
        else
           render :action => 'new'
        end
      end
      
  end

  def destroy
    @product = Product.find(params[:id])
    Product.destroy(@product.id)
    flash[:notice] = "deleted product successfully"
    respond_to do |format|
      format.json { redirect_to products_url }
    end

  end


  def index
    render :json => "dflkflsdf"
  end

end
