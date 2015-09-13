class PagesController < ApplicationController

  def portfolio
    @portfolio = Company.find_all
  end
end
