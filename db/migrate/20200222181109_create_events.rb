class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :availble_places
      t.integer :sport_id
      t.string :tipo
    end
  end
end
