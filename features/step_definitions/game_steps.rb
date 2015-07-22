Given 'user connected' do

end

When(/^open game exists$/) do
  GameManager.instance.open_game_exists?
end

Then(/^user receives success message that game started$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^open game does not exists$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^create new game$/) do
  GameManager.instance.add_game(Game.new)
end

Then(/^user connects to the game$/) do
  pending # Write code here that turns the phrase above into concrete actions
end