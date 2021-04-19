class CommentsController < ApplicationController
    before_action :set_procedure
  
    def new
      @comment = @procedure.comments.new
    end
  
    def create
      @comment = @procedure.comments.create!(comment_params)
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to @procedure }
      end
    end
  
    private
  
    def set_procedure
      @procedure = Procedure.find(params[:procedure_id])
    end
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  
end