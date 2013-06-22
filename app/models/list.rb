class List < ActiveRecord::Base
  attr_accessible :title, :item_ids, :items_attributes 
  
  has_many :items, :inverse_of => :list, :dependent => :destroy 
  
  accepts_nested_attributes_for :items, :reject_if => :all_blank
  

end
