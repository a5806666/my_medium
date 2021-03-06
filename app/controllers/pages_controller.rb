class PagesController < ApplicationController

    before_action :find_story, only: [:show]
    
    def index
        #全撈文章 @stories = Story.order(created_at: :desc).includes(:user)
        #只撈公開文章
        @stories = Story.published_stories

        @range = 10

        @clap = Story.order(clap: :desc)
    end

    def show
        @comment = @story.comments.new
        @comments = @story.comments.order(id: :desc)
    end

    def user
        
    end

    private
    def find_story
        @story = Story.friendly.find(params[:story_id])
    end
end
