# app/models/palooza02/palooza.rb
require "acts_as_tenant"

module Palooza02
  class Palooza < ApplicationRecord
    acts_as_tenant(:account)
    belongs_to :account
    belongs_to :author, class_name: "User"

    validates :title, presence: true
    validates :content, presence: true

    scope :published, -> { where("published_at <= ?", Time.current) }

    def publish
      update(published_at: Time.current)
    end

    def published?
      published_at.present? && published_at <= Time.current
    end
  end
end
