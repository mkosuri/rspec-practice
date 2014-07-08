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
   

     # it "is invalid without an e-mail"
     # it "is invalid without a correct e-mail" 
     # it "is invalid without a password" 
     # it "is invalid without a matching password confrimation" 
end
