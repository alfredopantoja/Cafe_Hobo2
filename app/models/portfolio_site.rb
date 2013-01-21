class PortfolioSite < ActiveRecord::Base
  attr_accessible :description, :name, :position, :screenshot_url, :site_url
end
