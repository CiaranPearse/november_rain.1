class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :diets
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :eases
  has_and_belongs_to_many :occasions
end
