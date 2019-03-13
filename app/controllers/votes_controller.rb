class VotesController < ApplicationController
    
    def create
        @poll = Poll.find_by_id(params[:poll][:id])
        @option = @poll.vote_values.find_by_id(params[:vote_value][:id])
         if @option && @poll 
                 
            @option.votes.create
            
         else
             render js: 'alert(\'Your vote cannot be saved. Have you already voted?\');'
         end
    end
end