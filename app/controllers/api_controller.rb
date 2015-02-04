class ApiController < ApplicationController
  before_filter :authenticate

  private
  def authenticate
    # any authentication need here
  end
end

