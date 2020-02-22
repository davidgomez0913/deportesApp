class Event_Users < ApplicationRecord  
  has_many :users
  belongs_to :event
  end