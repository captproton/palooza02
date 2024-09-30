# app/controllers/palooza02/application_controller.rb
module Palooza02
  class ApplicationController < ::ApplicationController
    layout "application"
    set_current_tenant_through_filter
    before_action :set_tenant

    private

    def set_tenant
      set_current_tenant(current_account)
    end
  end
end
