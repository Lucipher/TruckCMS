require 'spec_helper'

describe "ContactTruckFleets" do
  describe "GET /contact_truck_fleets" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get contact_truck_fleets_path
      response.status.should be(200)
    end
  end
end
