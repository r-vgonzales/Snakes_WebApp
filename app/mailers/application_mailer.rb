class ApplicationMailer < ActionMailer::Base
  default to: "s@snakenet.com", from: 'rio@email.com'
  layout 'mailer'
end
