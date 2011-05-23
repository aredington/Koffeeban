require 'spec_helper'

describe Lane do
  it "has a next lane" do
    lane_a = Lane.new(:name => "Open")
    lane_b = Lane.new(:name => "Development")
    lane_a.next_lane = lane_b
    lane_b.save!
    lane_a.save!
    lane_a.reload.next_lane.should == lane_b
    lane_b.reload.previous_lane.should == lane_a
  end

  it "has a previous lane" do
    lane_a = Lane.new(:name => "Open")
    lane_b = Lane.new(:name => "Development")
    lane_b.previous_lane = lane_a
    lane_a.save!
    lane_b.save!
    lane_a.reload.next_lane.should == lane_b
    lane_b.reload.previous_lane.should == lane_a
  end

  it "has cards" do
    lane = Lane.new(:name => "Open")
    lane.save!
    card = Card.new(:name => "Make a Kanban", :description => "It should be awesome.")
    lane.cards << card
    card.save!
    lane.cards.should be_include(card)
    card.lane.should == lane
  end

  it "finds the open lane" do
    open_lane = Lane.open
    open_lane.name.should == "Open"
  end
end
