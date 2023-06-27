require "./../models/my_model"

class MyController
  def initialize
    @my_model = WelcomeMessage.new
  end

  def index(env : HTTP::Env)
    "Bem vindo ao servidor"
  end
end
