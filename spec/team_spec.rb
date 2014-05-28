require 'spec_helper'

describe Team do
   before { @team = Team.new "Equipo" }

  subject { @team}
  it { should respond_to(:team_name, :filter_by_position, :add_player, :to_s)}
  it { should_not respond_to(:players) }

 describe "#add_player" do
    context "with correct params" do
      it "should add a player" do
        @team.add_player "Josue", 22
        expect {@team.players.count}.to eql 1
      end
    end
    context "with incorrect params" do
      it "should not add a player" do
      end
    end
  end

 describe "#filter_by_position" do
    it "should returns list of player" do
    end
    it "should returns empty array" do
    end
  end

 describe "#remove_player" do
    context "with correct params" do
      it "should remove player" do
      end
    end
    context "with incorrect params" do
      it "should return empty array" do
      end
    end
  end
end