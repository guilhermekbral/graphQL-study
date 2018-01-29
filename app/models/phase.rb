class Phase < ActiveRecord::Base
  belongs_to :pipe
  has_many :fields, dependent: :destroy
  has_many :cards, dependent: :destroy

  validates_presence_of :name
end
