require "kemal"
require "json"
require "./controllers/my_controller.cr"
require "./controllers/user_controller.cr"

module Desafio
  VERSION = "0.1.0"

  get "/" do |env|
    "Hello, World!"
  end

  post "/signup" do |env|
    UserController.signup(env)
  end

  Kemal.run
end
