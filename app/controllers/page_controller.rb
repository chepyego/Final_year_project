class PageController < ApplicationController
  def main
    @properties = Property.latest
  end
end
