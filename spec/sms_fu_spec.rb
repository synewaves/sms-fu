require 'spec_helper'

describe SMSFu do
  it 'should return correct version string' do
    SMSFu.version_string.should == "SmsFu version #{SMSFu::VERSION}"
  end
  it 'should accept a US number with no country code' do
    sms_fu = SMSFu::Client.configure(:delivery => :action_mailer)
    sms_fu.deliver("6503059222","at&t","Message")
    ActionMailer::Base.deliveries.last.to.should == ['6503059222@txt.att.net']
  end
  it 'should accept a Singapore number with no country code' do
    sms_fu = SMSFu::Client.configure(:delivery => :action_mailer)
    sms_fu.deliver("6596877848","m1-singapore","Message")
    ActionMailer::Base.deliveries.last.to.should == ['6596877848@m1.com.sg']
  end
  it 'should accept a brazilian number' do
    sms_fu = SMSFu::Client.configure(:delivery => :action_mailer)
    sms_fu.deliver("16503059222","claro-brazil","Message")
    ActionMailer::Base.deliveries.last.to.should == ['16503059222@clarotorpedo.com.br']
  end
end

