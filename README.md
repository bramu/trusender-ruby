# trusender-ruby
Ruby binding for TruSender platform

Here is the onliner to send the email

```ruby
TruSender::send_email("AUTH_TOKEN", "contact_us", "to@address.com", {:data => "here"})```




Here is one liner to capture the customer activity

```ruby
TruSender::send_event("AUTH_TOKEN", "customer@email.com", "Event Name", {"event" => "properties here"})```
