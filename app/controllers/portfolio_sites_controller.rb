class PortfolioSitesController < ApplicationController
  
  def index
  	@portfolio_sites = PortfolioSite.all
  end

  def show
  	@portfolio_site = PortfolioSite.find(params[:id])
  end

  def new
  	@portfolio_site = PortfolioSite.new
  end

  def edit
  	@portfolio_site = PortfolioSite.find(params[:id])
  end

  def create 
  	@portfolio_site = PortfolioSite.new(params[:portfolio_site])
  	if @portfolio_site.save
  		flash[:success] = "Portfolio site was successfully created."
  		redirect_to @portfolio_site
  	else
  		render 'new'
  	end
  end

  def update
  	@portfolio_site = PortfolioSite.find(params[:id])
  	if @portfolio_site.update_attributes(params[:portfolio_site])
  		flash[:success] = "Portfolio site updated."
  		redirect_to @portfolio_site
  	else
  		render 'edit'
  	end
  end

  def destroy
  	PortfolioSite.find(params[:id]).destroy
  	flash[:success] = "Portfolio site destroyed."
  	redirect_to portfolio_sites_url
  end
  
end
