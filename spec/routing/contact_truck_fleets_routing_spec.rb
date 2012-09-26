require "spec_helper"

describe ContactTruckFleetsController do
  describe "routing" do

    it "routes to #index" do
      get("/contact_truck_fleets").should route_to("contact_truck_fleets#index")
    end

    it "routes to #new" do
      get("/contact_truck_fleets/new").should route_to("contact_truck_fleets#new")
    end

    it "routes to #show" do
      get("/contact_truck_fleets/1").should route_to("contact_truck_fleets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contact_truck_fleets/1/edit").should route_to("contact_truck_fleets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contact_truck_fleets").should route_to("contact_truck_fleets#create")
    end

    it "routes to #update" do
      put("/contact_truck_fleets/1").should route_to("contact_truck_fleets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contact_truck_fleets/1").should route_to("contact_truck_fleets#destroy", :id => "1")
    end

  end
end
