require "json"

module Fortnox::Serializer
  struct CompanySettings
    JSON.mapping({
      address:             {type: String, key: "Address"},
      bg:                  {type: String, key: "BG"},
      bic:                 {type: String, key: "BIC"},
      branch_code:         {type: String, key: "BranchCode"},
      city:                {type: String, key: "City"},
      contact_first_name:  {type: String, key: "ContactFirstName"},
      contact_last_name:   {type: String, key: "ContactLastName"},
      country:             {type: String, key: "Country"},
      country_code:        {type: String, key: "CountryCode"},
      database_number:     {type: String, key: "DatabaseNumber"},
      domicile:            {type: String, key: "Domicile"},
      email:               {type: String, key: "Email"},
      fax:                 {type: String, key: "Fax"},
      iban:                {type: String, key: "IBAN"},
      name:                {type: String, key: "Name"},
      organization_number: {type: String, key: "OrganizationNumber"},
      pg:                  {type: String, key: "PG"},
      phone1:              {type: String, key: "Phone1"},
      phone2:              {type: String, key: "Phone2"},
      tax_enabled:         {type: Bool, key: "TaxEnabled"},
      vat_number:          {type: String, key: "VATNumber"},
      visit_address:       {type: String, key: "VisitAddress"},
      visit_city:          {type: String, key: "VisitCity"},
      visit_country:       {type: String, key: "VisitCountry"},
      visit_country_code:  {type: String, key: "VisitCountryCode"},
      visit_name:          {type: String, key: "VisitName"},
      visit_zip_code:      {type: String, key: "VisitZipCode"},
      www:                 {type: String, key: "WWW"},
      zip_code:            {type: String, key: "ZipCode"},
    })
  end

  struct CompanySettingsResponse
    JSON.mapping({
      data: {type: CompanySettings, key: "CompanySettings"},
    })
  end
end
