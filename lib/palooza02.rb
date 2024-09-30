require "palooza02/version"
require "palooza02/engine"
require "acts_as_tenant"

module Palooza02
  mattr_accessor :some_option
  self.some_option = nil

  def self.setup
    yield self
  end
end
