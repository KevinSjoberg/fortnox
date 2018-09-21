require "http/client"

module Fortnox
  class Client
    BASE_URL = "https://api.fortnox.se"

    def initialize(@access_token : String, @client_secret : String)
      @http_client = HTTP::Client.new(URI.parse(BASE_URL))
    end

    def get_company_settings : Response
      response = @http_client.get("/3/settings/company", headers: HTTP::Headers{
        "Accept"        => "application/json",
        "Content-Type"  => "application/json",
        "Access-Token"  => @access_token,
        "Client-Secret" => @client_secret,
      })

      Response(Serializer::CompanySettingsResponse).new(response)
    end

    def get_invoices : ResponsePaginated
      response = @http_client.get("/3/invoices", headers: HTTP::Headers{
        "Accept"        => "application/json",
        "Content-Type"  => "application/json",
        "Access-Token"  => @access_token,
        "Client-Secret" => @client_secret,
      })

      ResponsePaginated(Serializer::InvoicesResponse).new(response)
    end
  end
end
