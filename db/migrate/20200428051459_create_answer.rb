class CreateAnswer < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
    	t.decimal :rating, precision: 3, scale: 2
    	t.belongs_to :customer
    	t.belongs_to :product
    	t.belongs_to :question

    	t.timestamps
    end
  end
end
