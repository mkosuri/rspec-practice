require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do

describe "post create" do
  describe "with valid params" do
    it "creates a new product" do
     request.accept = "application/json"  
        post :create,{:name =>"apple",:cost =>12548}
        expect(response.status).to eq(200)
        # redirect_to '/'
         #result = JSON.parse(response.body)
          #expect(result['status']).to eq(true)    
    end
  end
end

describe "get show" do
  describe "to show particular product" do
    it "show the created product" do
     request.accept = "application/json"
      @product = FactoryGirl.create(:product)  
        get :show,:id => @product.id
        expect(response.status).to eq(200)    
    end
  end
end

describe "get edit" do
  describe "to edit particular product" do
    it "edit product action" do
     request.accept = "application/json"
      @product = FactoryGirl.create(:product)  
        get :edit,:id => @product.id
        expect(response.status).to eq(200)    
    end
  end
end

 describe "put update" do
   describe "to update particular one" do
     it "update product action" do
      request.accept = "application/json"
      @product = FactoryGirl.create(:product) 
      puts(@product.name)
      @product.name = 'update product'
      @product.cost = 1234
      put :update,:id => @product.id, :product=>{:name=> @product.name, :cost=>@product.cost}
      expect(response.status).to eq(200)
      @product.reload
      expect(@product.name).to eq('update product')
      #if @product.save
       #response.should redirect_to(@product)
      #end

     end
   end
 end

 describe "delete destroy " do
   describe "with valid params" do
     it "delele paticulat product" do
       request.accept = "application/json"
       @product = FactoryGirl.create(:product)
       @products = Product.count
       delete :destroy,:id => @product.id
       expect(response.status).to eq(302) 
       response.should redirect_to '/products'
     end
   end
 end

end
