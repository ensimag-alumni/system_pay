# encoding: UTF-8
require 'system_pay/form_helper'
require 'rails'

module SystemPay
  class Railtie < ::Rails::Railtie
    initializer "system_pay.form_helper" do
      ActiveSupport.on_load(:action_controller_base) do
        helper SystemPay::FormHelper
      end
    end
  end
end