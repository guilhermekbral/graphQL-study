class Pipe < ActiveRecord::Base
  belongs_to :organization
  has_many :phases, dependent: :destroy
  has_many :labels, dependent: :destroy
  has_many :cards, through: :phases, dependent: :destroy

  validates_presence_of :name
end
