require 'spec_helper'

describe Team do
   before { @team = Team.new "Equipo" }

  subject { @team}
  it { should respond_to(:team_name, :filter_by_position, :add_player, :to_s)}

 describe "#add_player" do
    context "with correct params" do
      it "should add a player" do
        @team.add_player "Josue", 22
        expect(@team.players.count).to eql 1
      end
    end
    context "with incorrect params" do
      it "should  throw an error" do
        expect {@team.add_player "Ernesto"}.to raise_error ArgumentError
      end
    end
    context "with existing player" do
      it "should not add player" do
        num_players = @team.players.count
        @team.add_player "Josue", 22
        expect(@team.players.count).to eql num_players
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