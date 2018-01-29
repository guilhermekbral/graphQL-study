class Field < ActiveRecord::Base
  belongs_to :phase

  validates_presence_of :name
end
