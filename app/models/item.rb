class Item < ActiveRecord::Base
  attr_accessible :goal, :list_id, :due_date
  
  belongs_to :list
  validates :goal, :presence => true 
  validate :list, :presence => true 
end
