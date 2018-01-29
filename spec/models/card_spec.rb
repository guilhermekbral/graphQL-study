require 'rails_helper'

RSpec.describe Card, type: :model do
  context '#relations' do
    it { is_expected.to belong_to :phase }
    it { is_expected.to have_many :card_fields }
    it { is_expected.to have_many :card_labels }
  end

  context '#validations' do
    it { is_expected.to validate_presence_of :title }
  end
end
