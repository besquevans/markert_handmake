require 'rails_helper'

RSpec.describe "Pages", type: :request do
  it "Enter Root Page" do 
    get "/"
    expect(response).to render_template(:home)
  end
end