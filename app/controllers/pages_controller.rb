class PagesController < ApplicationController
  def index
    @id = params[:article_selector].present? ? params[:article_selector] : 1

      @article = Article.where(id: @id).first
  end
end
