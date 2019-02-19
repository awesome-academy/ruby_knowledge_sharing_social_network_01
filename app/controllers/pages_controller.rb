class PagesController < ApplicationController
  def home; end

  def landing
    render layout: false
  end
end
