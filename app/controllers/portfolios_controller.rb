class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      redirect_to portfolios_path, notice: "Your portfolio is now published"
    else
      render :new
    end
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :display_image, :thumb_image)
  end
end
