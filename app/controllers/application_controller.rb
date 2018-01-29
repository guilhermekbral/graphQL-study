class ApplicationController < ActionController::Base
  PIPEFY_TEST_ORGANIZATION_ID = 92858
  
  protect_from_forgery with: :exception
end
