require "spec_helper"

describe PhotsController do
  describe "routing" do

    it "routes to #index" do
      get("/phots").should route_to("phots#index")
    end

    it "routes to #new" do
      get("/phots/new").should route_to("phots#new")
    end

    it "routes to #show" do
      get("/phots/1").should route_to("phots#show", :id => "1")
    end

    it "routes to #edit" do
      get("/phots/1/edit").should route_to("phots#edit", :id => "1")
    end

    it "routes to #create" do
      post("/phots").should route_to("phots#create")
    end

    it "routes to #update" do
      put("/phots/1").should route_to("phots#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/phots/1").should route_to("phots#destroy", :id => "1")
    end

  end
end
