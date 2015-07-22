require 'spec_helper'
describe 'Player connection to the game' do
  context 'Open game exist' do

    let(:game) { GameFighter::Game.new }

    it 'has one player' do
      expect(game.players.count).to eq(1)
    end

    # it 'wait for players' do
    #   expect(game.wait?).to be true
    # end

  end

  context 'Open game not exist' do

  end

end