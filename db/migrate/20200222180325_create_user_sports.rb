class CreateUserSports < ActiveRecord::Migration[6.0]
  def change
    create_table :user_sports do |t|
      t.integer :user_id
      t.integer :sport_id
    end
  end
end
