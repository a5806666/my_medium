class PagesController < ApplicationController

    before_action :find_story, only: [:show]

    def index
        #全撈文章 @stories = Story.order(created_at: :desc).includes(:user)
        #只撈公開文章
        @stories = Story.published_stories
    end

    def show
        
    end

    def user
        
    end

    private
    def find_story
        @story = Story.friendly.find(params[:story_id])
    end
end
