module Fortnox
  class Response(T)
    delegate status_code, status_message, to: @http_response
    delegate data, to: @deserialized_response

    @http_response : HTTP::Client::Response
    @deserialized_response : T

    def initialize(@http_response)
      @deserialized_response = T.from_json(http_response.body)
    end
  end
end
