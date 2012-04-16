require 'sms_fu/sms_fu_helper'
module SMSFu
  class Railtie < Rails::Railtie
    initializer 'sms_fu.sms_fu_helper' do
      ActionView::Base.send :include, SMSFuHelper
    end
  end
end
