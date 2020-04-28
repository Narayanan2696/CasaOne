class CreateRating < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
    	t.decimal :rate, precision: 3, scale: 2
    	t.belongs_to :product
    	t.belongs_to :customer
    	
    	t.timestamps
    end
  end
end
