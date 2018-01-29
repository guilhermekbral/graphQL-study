class CardField < ActiveRecord::Base
  belongs_to :card

  validates_presence_of :name
end
