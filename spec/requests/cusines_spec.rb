require 'rails_helper'

RSpec.describe "Cusines", :type => :request do
  describe "GET /cusines" do
    it "works! (now write some real specs)" do
      get cusines_path
      expect(response).to have_http_status(200)
    end
  end
end
