require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do

describe "POST create" do
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
  describe "with valid params" do
    it "creates a new product" do
     request.accept = "application/json"  
        post :create,{:name =>"apple",:cost =>12548}
        expect(response.status).to eq(200)    
    end
  end
end



end
