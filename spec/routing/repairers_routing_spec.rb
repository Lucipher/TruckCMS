require "spec_helper"

describe RepairersController do
  describe "routing" do

    it "routes to #index" do
      get("/repairers").should route_to("repairers#index")
    end

    it "routes to #new" do
      get("/repairers/new").should route_to("repairers#new")
    end

    it "routes to #show" do
      get("/repairers/1").should route_to("repairers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/repairers/1/edit").should route_to("repairers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/repairers").should route_to("repairers#create")
    end

    it "routes to #update" do
      put("/repairers/1").should route_to("repairers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/repairers/1").should route_to("repairers#destroy", :id => "1")
    end

  end
end
