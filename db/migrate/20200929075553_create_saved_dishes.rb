class CreateSavedDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_dishes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :dish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
