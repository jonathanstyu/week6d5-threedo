class List < ActiveRecord::Base
  attr_accessible :title, :item_ids 
  
  has_many :items, :inverse_of => :list
  
end
