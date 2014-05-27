describe Team do
   before { @team = Team.new 5,4,5 }

  subject { @team}
  it { should respond_to(:team_name, :filter_by_position, :add_player, :to_s)}
  it { should_not respond_to(:players) }
end