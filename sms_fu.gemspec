# -*- encoding: utf-8 -*-
require './lib/sms_fu/version'

Gem::Specification.new do |s|
  s.name = %q{sms_fu}
  s.version     = SMSFu::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yacin Bahi"]
  s.date = %q{2013-02-11}
  s.description = %q{SMS Fu allows you to send text messages to a mobile recipient for free.  It leverages ActionMailer or Pony for delivery of text messages through e-mail.}
  s.email = %q{yacin@sensr.net}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = Dir.glob("lib/**/*.rb")
  s.files += ["Rakefile","install.rb", "tasks/sms_fu_tasks.rake", "templates/sms_fu.yml"]
  s.has_rdoc = true
  s.homepage = %q{https://github.com/yacc/sms-fu}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{sms_fu allows you to send free text messages to a mobile recipient.}

  s.add_dependency(%q<actionmailer>, [">= 3.2.0"])
  s.add_dependency(%q<pony>, [">= 1.0"])
  s.add_dependency(%q<phony>, [">= 1.8.6"])
  s.add_development_dependency 'rspec', '~> 2.5'  
end
