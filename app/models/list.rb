class List < ActiveRecord::Base
  attr_accessible :title, :item_ids, :items_attributes 
  
  has_many :items, :inverse_of => :list
  
  accepts_nested_attributes_for :items
end
