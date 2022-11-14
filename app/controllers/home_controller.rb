class HomeController < ApplicationController
  def index
    @dummies = Dummy.all
  end
end
