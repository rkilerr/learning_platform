class Group < ApplicationRecord
  has_and_belongs_to_many :teachers
  has_many :students
end
