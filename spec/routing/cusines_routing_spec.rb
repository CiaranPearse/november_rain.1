require "rails_helper"

RSpec.describe CusinesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cusines").to route_to("cusines#index")
    end

    it "routes to #new" do
      expect(:get => "/cusines/new").to route_to("cusines#new")
    end

    it "routes to #show" do
      expect(:get => "/cusines/1").to route_to("cusines#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cusines/1/edit").to route_to("cusines#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cusines").to route_to("cusines#create")
    end

    it "routes to #update" do
      expect(:put => "/cusines/1").to route_to("cusines#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cusines/1").to route_to("cusines#destroy", :id => "1")
    end

  end
end
