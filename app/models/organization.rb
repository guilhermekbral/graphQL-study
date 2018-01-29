class Organization < ActiveRecord::Base

  has_many :pipes, dependent: :destroy

  validates_presence_of :name, :email
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
