class Student < ApplicationRecord
  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
  has_and_belongs_to_many :teachers
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end
