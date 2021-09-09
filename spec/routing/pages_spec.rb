require 'rails_helper'

RSpec.describe "Pages", type: :routing do
  it "routes /pages" do
    expect(get("/")).to route_to("pages#home")
  end
end
