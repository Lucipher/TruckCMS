require "spec_helper"

describe ContactsRepaiersController do
  describe "routing" do

    it "routes to #index" do
      get("/contacts_repaiers").should route_to("contacts_repaiers#index")
    end

    it "routes to #new" do
      get("/contacts_repaiers/new").should route_to("contacts_repaiers#new")
    end

    it "routes to #show" do
      get("/contacts_repaiers/1").should route_to("contacts_repaiers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/contacts_repaiers/1/edit").should route_to("contacts_repaiers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/contacts_repaiers").should route_to("contacts_repaiers#create")
    end

    it "routes to #update" do
      put("/contacts_repaiers/1").should route_to("contacts_repaiers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/contacts_repaiers/1").should route_to("contacts_repaiers#destroy", :id => "1")
    end

  end
end
