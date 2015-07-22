require './app'
require 'pry'
Faye::WebSocket.load_adapter('goliath')

class EchoServer < Goliath::API
  def response(env)
    App.call(env)
  end
end