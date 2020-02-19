class TruSender
  def self.send_email(auth_token, template_name, to_address, data_mapping)
    client = Client.new
    post_data =  {
      auth_token: auth_token,
      template_name: template_name,
      email: to_address,
      data_mapping: data_mapping
    }
    client.send("/sendEmail", post_data)
  end

  def self.send_event(auth_token, email, name, properties)
    client = Client.new
    post_data =  {
      auth_token: auth_token,
      email: email,
      name: name,
      properties: properties
    }
    client.send("/sendEvent", post_data)
  end
end

require 'trusender/client'
