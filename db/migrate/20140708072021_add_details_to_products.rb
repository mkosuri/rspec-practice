class AddDetailsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :qty, :integer
    add_column :products, :available, :integer
    add_column :products, :manufacture_date, :date
    add_column :products, :expire_date, :date
  end
end
