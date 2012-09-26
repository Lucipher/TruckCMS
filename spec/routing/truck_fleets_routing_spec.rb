require "spec_helper"

describe TruckFleetsController do
  describe "routing" do

    it "routes to #index" do
      get("/truck_fleets").should route_to("truck_fleets#index")
    end

    it "routes to #new" do
      get("/truck_fleets/new").should route_to("truck_fleets#new")
    end

    it "routes to #show" do
      get("/truck_fleets/1").should route_to("truck_fleets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/truck_fleets/1/edit").should route_to("truck_fleets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/truck_fleets").should route_to("truck_fleets#create")
    end

    it "routes to #update" do
      put("/truck_fleets/1").should route_to("truck_fleets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/truck_fleets/1").should route_to("truck_fleets#destroy", :id => "1")
    end

  end
end
