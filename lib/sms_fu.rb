require 'action_mailer'
require 'phony'
require 'yaml'

require 'sms_fu/version'
require 'sms_fu/sms_fu'
require 'sms_fu/sms_notifier'
require 'sms_fu/railtie' if defined?(Rails)
