class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :description
      t.date :date
      t.datatime :time
      t.string :avg_rating
      t.string :category
      t.string :latitude
      t.string :longitude
      t.references :artist, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
