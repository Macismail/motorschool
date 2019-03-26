class Contact < MailForm::Base
  attributes :name,  validate: true
  attributes :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :contact,  validate: true
  attributes :message,  validate: true

  def headers
    {
      subject: 'Contact Form',
      to: 'macismail7@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end
end
