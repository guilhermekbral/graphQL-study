require 'rails_helper'

RSpec.describe Organization, type: :model do
  context '#relations' do
    it { is_expected.to have_many :pipes }
  end

  context '#validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :email }
  end

  context 'when validation email format' do
    context 'with valid email' do
      let(:organization) { FactoryBot.build :organization, email: 'valid_email@valid.com' }

      it 'saves the organizations' do
        expect(organization.save).to be_truthy
        expect(organization.errors).to be_empty
      end
    end

    context 'with invalid email' do
      let(:organization) { FactoryBot.build :organization, email: 'invalid_email.com' }

      it 'does not save the organization' do
        expect(organization.save).to be_falsey
        expect(organization.errors).to_not be_empty
      end
    end
  end
end
