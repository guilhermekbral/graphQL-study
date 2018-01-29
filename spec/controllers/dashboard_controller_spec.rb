require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
  let!(:pipefy) do
    Organization.create(name: 'Pipefy Recruitment Test',
                        id: 92858,
                        email: 'pipefydevrecruitingfakeuser@mailinator.com')
  end
  let!(:organization) { FactoryBot.create :organization }
  let!(:pipefy_pipe) { Pipe.create(id: 335557, name: 'Back-end Test', organization: pipefy) }
  let!(:organization_pipe) { Pipe.create(name: 'Back-end Test', organization: organization) }

  context '#show' do
    before { get :show }

    it { expect(controller.base_uri).to eq 'https://app.pipefy.com/queries' }
    it { expect(controller.organization).to eq pipefy }
    it { expect(controller.pipe).to eq pipefy_pipe }
  end
end
