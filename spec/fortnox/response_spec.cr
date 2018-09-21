require "json"
require "../spec_helper"

private JSON_BODY = %q({"record":{"id": 1}})

private struct Record
  JSON.mapping({
    id: {type: Int32, key: "id"},
  })

  def initialize(@id)
  end
end

private struct RecordResponse
  JSON.mapping({
    data: {type: Record, key: "record"},
  })
end

describe Fortnox::Response do
  it "delegates status information to HTTP response" do
    http_response = HTTP::Client::Response.new(200, JSON_BODY, status_message: "OK")
    response = Fortnox::Response(RecordResponse).new(http_response)
    response.status_code.should eq(200)
    response.status_message.should eq("OK")
  end

  it "delegates data to response serializer" do
    http_response = HTTP::Client::Response.new(200, JSON_BODY, status_message: "OK")
    response = Fortnox::Response(RecordResponse).new(http_response)
    response.data.should eq(Record.new(1))
  end
end
