class PagesController < ApplicationController
  def home
    @title="Home"
  end

  def contact
    @title="Contact"
  end

  def about
    @title="About"
  end

  def register
    @title="Sign-Up"
  end

  def index

  end

end
