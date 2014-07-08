class Product < ActiveRecord::Base

  validates :name,:cost,:presence => true
  #validates :name, presence: true
  belongs_to :customer

end
