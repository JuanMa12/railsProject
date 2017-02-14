class Book < ApplicationRecord
  belongs_to 	:category

  validates 	:name, uniqueness:{message:'Ya existe este nombre'}
end
