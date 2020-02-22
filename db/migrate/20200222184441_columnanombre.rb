class Columnanombre < ActiveRecord::Migration[6.0]
  def change
    
    add_column :users, :name, :string
    add_column :events, :created_at, :datetime
    add_column :user_sports, :created_at, :datetime
    
  end
end
