class StoriesController < ApplicationController

    before_action :authenticate_user!
    before_action :fine_story,only: [:edit, :update, :destroy]

    def index
        @stories = current_user.stories.order(created_at: :desc)
    end
    # 
    def new
        @story = current_user.stories.new
    end
    # 
    def create
        @story = current_user.stories.new(story_params)
        # @story.status = 'published' if params[:publish]
        @story.publish! if params[:publish]
        
        if @story.save
            if params[:publish]
                redirect_to stories_path, notice: '完了しました'
            else
                redirect_to edit_story_path(@story), notice: '完了しました'
            end
        else
            render :new
        end
    end
    # 
    def edit
        
    end
    # 
    def update
        if @story.update(story_params)
            case 
            when params[:publish]
                @story.publish!
                redirect_to stories_path, notice: '投稿しました'
            when params[:unpublish]
                @story.unpublish!
                redirect_to stories_path, notice: '下書きしました'
            else
                redirect_to edit_story_path(@story), notice: '保存しました'
            end
        else
            render :edit
        end
    end
    # 
    def destroy
        @story.destroy
        # @story.update(deleted_at: Time.now)
        redirect_to stories_path, notice: '削除しました'
    end

    private
    def fine_story
        @story = current_user.stories.friendly.find(params[:id])
    end

    def story_params
        params.require(:story).permit(:title, :content, :cover_image)
    end
end
