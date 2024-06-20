class PlayController < ActionController::Base
    
    layout 'play'

    def index
    end

    def show
        @tournament = Tournament.find(params[:tournament_id])

        if session[:contestant_id]
            @contestant = Contestant.find(session[:contestant_id])
        else
            redirect_to play_new_contestant_path(tournament_id: @tournament.id)
        end
    end

    # def enter
    #     puts 'here'
    #     redirect_to play_path(params[:game])
    # end

end