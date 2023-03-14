class User < ApplicationRecord
  has_one :student
  has_one :teacher

  has_secure_password
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Invalid email" }, allow_nil: true
  validates :full_name, presence: true
  validates :password, presence: true, length: {minimum:8, maximum:12}
  validates :username, presence: true
  enum user_type: { teacher: "teacher", student: "student" }
end
