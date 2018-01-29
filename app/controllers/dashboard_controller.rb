class DashboardController < ApplicationController

  # We are exposing the organization with a explicit id because the test
  # uses a specific organization, and no other organizations will
  # be created. In a more real situation, we would have only
  # expose :organization, to fetch the current organization based on login
  expose :organization, id: ->{ PIPEFY_TEST_ORGANIZATION_ID }
  expose :pipe, -> { organization.pipes.first }

  def base_uri
    'https://app.pipefy.com/queries'
  end
end
