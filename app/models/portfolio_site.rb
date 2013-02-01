class PortfolioSite < ActiveRecord::Base
  attr_accessible :description, :name, :position, :screenshot_url, :site_url

  default_scope order: 'portfolio_sites.position ASC'
end
