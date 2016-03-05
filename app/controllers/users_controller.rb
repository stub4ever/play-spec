class UsersController < ApplicationController

  def index
    @users = ["Kayo", "An", "Quoc"]
  end
end
