class StaticPagesController < ApplicationController
  def home
  	@portfolio_sites = PortfolioSite.all
  	@codeschool_courses = CodeschoolCourse.all
  end

  def help
  end

  def about
  end

  def contact
  end
  
end
