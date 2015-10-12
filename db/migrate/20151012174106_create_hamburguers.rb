class CreateHamburguers < ActiveRecord::Migration
  def change
    create_table :hamburguers do |t|
      t.string :title
      t.string :store
      t.text :description
      t.integer :price
      t.integer :user_id
      t.integer :rating
      t.string :url

      t.timestamps null: false
    end
  end
end
