StatusPage.configure do
  self.use :cache
  self.use :redis
  self.use :sidekiq
  self.use :database

  self.interval = 10

  self.add_custom_service(StatusPage::RubyGems)
end
