# app/models/palooza02/palooza.rb
module Palooza02
  class Palooza < ApplicationRecord
    acts_as_tenant(:account)
    belongs_to :account

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
