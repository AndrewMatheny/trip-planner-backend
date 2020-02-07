class CreateStops < ActiveRecord::Migration[6.0]
  def change
    create_table :stops do |t|
      t.string :name
      t.string :location
      t.string :date
      t.string :notes
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
