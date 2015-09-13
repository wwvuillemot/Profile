class PagesController < ApplicationController

  def portfolio
    company = params[:company] ? params[:company].to_sym : nil
    @portfolio = {}
    if company
      @portfolio[company] = Company.find(company)
      @single_company = true
    end
    if @portfolio[company].nil?
      @portfolio = Company.find_all
      @single_company = false
    end
  end
end
