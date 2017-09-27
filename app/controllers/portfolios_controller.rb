class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  layout "portfolio"
  access all: [:show, :index, rubyonrails, javascript], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @portfolios = Portfolio.all
    # @portfolios = Portfolio.javascript
    # @portfolios = Portfolio.ruby_on_rails_portfolio_items
    # @portfolios = Portfolio.where(subtitle: 'Javasscript')
  end

  def rubyonrails
    @portfolios = Portfolio.ruby_on_rails_portfolio_items
  end

  def javascript
    @portfolios = Portfolio.javascript
  end

  def new
    @portfolio = Portfolio.new
    3.times { @portfolio.technologies.build }
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolio_show_path(@portfolio), notice: "Your portfolio is now published"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @portfolio.update(portfolio_params)
      redirect_to portfolio_show_path(@portfolio), notice: "Your portfolio updated"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @portfolio.destroy
    redirect_to portfolios_path
  end

  private
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title,
                                      :subtitle,
                                      :body,
                                      :display_image,
                                      :thumb_image,
                                      technologies_attributes: [:name])
  end
end
