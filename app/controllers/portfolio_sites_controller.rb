class PortfolioSitesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    authorize! :index, @portfolio_site, message: 'Not authorized as an administrator.'
  	@portfolio_sites = PortfolioSite.all
  end

  def show
    authorize! :show, @portfolio_site, message: 'Not authorized as an administrator.'
  	@portfolio_site = PortfolioSite.find(params[:id])
  end

  def new
    authorize! :new, @portfolio_site, message: 'Not authorized as an administrator.'
  	@portfolio_site = PortfolioSite.new
  end

  def edit
    authorize! :edit, @portfolio_site, message: 'Not authorized as an administrator.'
  	@portfolio_site = PortfolioSite.find(params[:id])
  end

  def create 
    authorize! :create, @portfolio_site, message: 'Not authorized as an administrator.'
  	@portfolio_site = PortfolioSite.new(params[:portfolio_site])
  	if @portfolio_site.save
  		flash[:success] = "Portfolio site was successfully created."
  		redirect_to @portfolio_site
  	else
  		render 'new'
  	end
  end

  def update
    authorize! :update, @portfolio_site, message: 'Not authorized as an administrator.'
  	@portfolio_site = PortfolioSite.find(params[:id])
  	if @portfolio_site.update_attributes(params[:portfolio_site])
  		flash[:success] = "Portfolio site updated."
  		redirect_to @portfolio_site
  	else
  		render 'edit'
  	end
  end

  def destroy
    authorize! :destroy, @portfolio_site, message: 'Not authorized as an administrator.'
  	PortfolioSite.find(params[:id]).destroy
  	flash[:success] = "Portfolio site destroyed."
  	redirect_to portfolio_sites_url
  end
  
end
