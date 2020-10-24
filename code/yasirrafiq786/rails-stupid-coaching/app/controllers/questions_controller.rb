class QuestionsController < ApplicationController
    def ask
        
    end

    def reply
        @response = params[:response]
        if @response == "I am going to work"
            @answer = "Great"
        elsif @response.end_with?("?") || nil
            @answer = "Silly question, get dressed and go to work!"
        else
            @answer = "I don't care, get dressed and go to work!"
        end
        
    end
end
