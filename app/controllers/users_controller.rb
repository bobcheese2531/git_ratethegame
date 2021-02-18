class UsersController < ApplicationController
    def show
        @games = Game.where(user_id: current_user.id)
    end
end
