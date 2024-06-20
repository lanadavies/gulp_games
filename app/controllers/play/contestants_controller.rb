class Play::ContestantsController < PlayController
    def new
        @contestant = Contestant.new
        @tournament = Tournament.find(params[:tournament_id])
    end

    def create
        @contestant = Contestant.new(contestant_params)

        if @contestant.save
            session[:contestant_id] = @contestant.id
            puts(session[:contestant_id])
            redirect_to play_tournament_path(@contestant.tournament_id)
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    # Only allow a list of trusted parameters through.
    def contestant_params
        params.require(:contestant).permit(:name, :tournament_id)
      end
end