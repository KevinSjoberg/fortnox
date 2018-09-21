require "./spec_helper"

describe Fortnox do
  it "retrieves company settings" do
    client = Fortnox::Client.new(ENV["ACCESS_TOKEN"], ENV["CLIENT_SECRET"])

    response = client.get_company_settings

    response.status_code.should eq(200)
    response.data.should be_a(Fortnox::Serializer::CompanySettings)
  end

  it "retrieves invoices" do
    client = Fortnox::Client.new(ENV["ACCESS_TOKEN"], ENV["CLIENT_SECRET"])

    response = client.get_invoices

    response.status_code.should eq(200)
    response.meta.should be_a(Fortnox::Serializer::Metadata)
    response.data.should be_a(Array(Fortnox::Serializer::Invoice))
  end
end
