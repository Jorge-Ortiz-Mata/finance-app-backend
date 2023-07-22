module Api
  module V1
    class ArticlesController < ApplicationController
      before_action :set_article, only: %i[ show update destroy ]

      def index
        @articles = Article.all

        render json: @articles
      end
    end
  end
end


