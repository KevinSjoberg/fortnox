require "json"

module Fortnox::Serializer
  struct Invoice
    JSON.mapping({
      url: {type: String, key: "@url"},
    })
  end

  struct InvoicesResponse
    JSON.mapping({
      meta: {type: Metadata, key: "MetaInformation"},
      data: {type: Array(Invoice), key: "Invoices"},
    })
  end
end
