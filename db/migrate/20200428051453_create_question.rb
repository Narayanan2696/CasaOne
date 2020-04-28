class CreateQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
    	t.string :product_question
    	t.belongs_to :product

    	t.timestamps
    end
  end
end
