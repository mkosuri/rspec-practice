require 'rails_helper'

RSpec.describe Customer, :type => :model do
  it "has a valid factory" do
        @customer = create(:customer).should be_valid
  end
  it "is invalid without name " do
   		#@customer_invalid = create(:customer,:name => nil).should_not be_valid
   		@customer = build(:customer,:name => nil).should_not be_valid
  end
end
