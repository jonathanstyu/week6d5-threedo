class List < ActiveRecord::Base
  attr_accessible :title
  
  has_many :items, :inverse_of => :list
  
end
