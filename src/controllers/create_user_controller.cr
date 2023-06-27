require "kemal"
require "json"
require "./../models/user.cr"

class UserController
  def self.signup(env : HTTP::Env)
    body = String.new(env.request.body)

    data = JSON.parse(body)

    user = User.new
    user.name = data["name"]
    user.email = data["email"]
    user.password = data["password"]

    if !user.name || !user.email || !user.password
      return "preencha todos os campos"
    end

    "Usuário cadastrado com sucesso!"
  end
end
