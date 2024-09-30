# app/models/palooza02/palooza.rb
module Palooza02
  class Palooza < ApplicationRecord
    acts_as_tenant(:account)
    belongs_to :account
    belongs_to :author, class_name: 'User'


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
# app/models/palooza02/palooza.rb
module Palooza02
  class Palooza < ApplicationRecord
    acts_as_tenant(:account)
    belongs_to :author, class_name: 'User'

    validates :title, presence: true
    validates :content, presence: true
    validates :author, presence: true

    # ... rest of your model code
  end
end
