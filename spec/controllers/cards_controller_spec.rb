require 'spec_helper'

describe CardsController do
  describe "#create" do

    before do
      @card_count = Card.count 
      post :create, :card => {:name => 'New Card', :description => 'A happy little card.'}
      @new_card = assigns(:card)
    end
    
    it "makes a new card" do
      Card.count.should == @card_count + 1
      @new_card.should be_instance_of(Card)
    end

    it "assigns the parameters" do
      @new_card.name.should == "New Card"
      @new_card.description.should == "A happy little card."
    end

    it "places the card in the open lane" do
      @new_card.lane.should == Lane.open
    end

    it "responds with the new card as json" do
      response.should be_successful
      response_json = JSON::parse(response.body)
      response_json["name"].should == "New Card"
      response_json["description"].should == "A happy little card."
      response_json["id"].should_not be_nil
    end
  end
end
