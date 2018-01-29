class Card < ActiveRecord::Base
  belongs_to :phase
  has_many :card_labels, dependent: :destroy
  has_many :card_fields, dependent: :destroy

  validates_presence_of :title
end
