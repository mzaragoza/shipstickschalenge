require 'spec_helper'
require "rails_helper"

describe Product do
  it "has a valid Fabricator" do
    Fabricate.build(:product).should be_valid
  end
end

