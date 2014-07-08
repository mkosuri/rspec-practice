 require 'rails_helper'
#require 'spec_helper'
# RSpec.describe Product, :type => :model do
#   it "has a valid factory" do
#    		FactoryGirl.create(:product).should be_valid
#    	end
# end
describe Product do
     
  it "has a valid factory" do
    FactoryGirl.build(:product).should be_valid
  end
    
  it "is invalid without name " do
   	FactoryGirl.build(:product,:name => nil).should_not be_valid
  end
    
  it "is invalid without cost" do
   	FactoryGirl.build(:product,:cost => nil).should_not be_valid
	end

  it "product belongs to customer " do
      t = Product.reflect_on_association(:customer)
      t.macro.should == :belongs_to
  end 
end


  
