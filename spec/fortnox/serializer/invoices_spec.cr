require "../../spec_helper"

describe Fortnox::Serializer::InvoicesResponse do
  it "serializes from JSON" do
    json = <<-JSON
     {
       "MetaInformation": {
         "@TotalResources": 0,
         "@TotalPages": 0,
         "@CurrentPage": 1
       },
       "Invoices": []
     }
    JSON

    response = Fortnox::Serializer::InvoicesResponse.from_json(json)
    response.data.should be_a(Array(Fortnox::Serializer::Invoice))
    response.meta.should be_a(Fortnox::Serializer::Metadata)
    response.meta.total_resources.should eq(0)
    response.meta.total_pages.should eq(0)
    response.meta.current_page.should eq(1)
  end
end
