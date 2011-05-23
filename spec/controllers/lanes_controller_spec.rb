require 'spec_helper'

describe LanesController do
  describe "#index" do
    before do
      get :index
    end

    it "lists all the lanes" do
      assigns(:lanes).should == Lane.all
    end

    it "returns json for each lane" do
      response_json = JSON::parse response.body
      response_json.length.should == Lane.count
    end
  end
end
