class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :location
      t.string :image
      t.string :category
      t.string :date
      t.string :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
