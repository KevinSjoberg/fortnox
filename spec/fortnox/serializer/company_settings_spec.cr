require "../../spec_helper"

describe Fortnox::Serializer::CompanySettingsResponse do
  it "serializes from JSON" do
    json = <<-JSON
      {
        "CompanySettings": {
          "Address": "Harfall",
          "BG": "1234-5678",
          "BIC": "NDEASESS",
          "BranchCode": "62010",
          "City": "Karlskoga",
          "ContactFirstName": "Sara",
          "ContactLastName": "Hansson",
          "Country": "Sverige",
          "CountryCode": "SE",
          "DatabaseNumber": "123456",
          "Domicile": "",
          "Email": "sara.hansson@example.com",
          "Fax": "",
          "IBAN": "SE6412000000012170145230",
          "Name": "Företaget",
          "OrganizationNumber": "620618-8366",
          "PG": "",
          "Phone1": "0586-6810643",
          "Phone2": "",
          "TaxEnabled": false,
          "VATNumber": "SE058668106431",
          "VisitAddress": "Harfall",
          "VisitCity": "Karlskoga",
          "VisitCountry": "Sverige",
          "VisitCountryCode": "SE",
          "VisitName": "Företaget",
          "VisitZipCode": "691 54",
          "WWW": "www.example.com",
          "ZipCode": "691 54"
        }
      }
    JSON

    response = Fortnox::Serializer::CompanySettingsResponse.from_json(json)
    response.data.should be_a(Fortnox::Serializer::CompanySettings)
    response.data.address.should eq("Harfall")
    response.data.bg.should eq("1234-5678")
    response.data.bic.should eq("NDEASESS")
    response.data.branch_code.should eq("62010")
    response.data.city.should eq("Karlskoga")
    response.data.contact_first_name.should eq("Sara")
    response.data.contact_last_name.should eq("Hansson")
    response.data.country.should eq("Sverige")
    response.data.country_code.should eq("SE")
    response.data.database_number.should eq("123456")
    response.data.domicile.should eq("")
    response.data.email.should eq("sara.hansson@example.com")
    response.data.fax.should eq("")
    response.data.iban.should eq("SE6412000000012170145230")
    response.data.name.should eq("Företaget")
    response.data.organization_number.should eq("620618-8366")
    response.data.pg.should eq("")
    response.data.phone1.should eq("0586-6810643")
    response.data.phone2.should eq("")
    response.data.tax_enabled.should eq(false)
    response.data.vat_number.should eq("SE058668106431")
    response.data.visit_address.should eq("Harfall")
    response.data.visit_city.should eq("Karlskoga")
    response.data.visit_country.should eq("Sverige")
    response.data.visit_country_code.should eq("SE")
    response.data.visit_name.should eq("Företaget")
    response.data.visit_zip_code.should eq("691 54")
    response.data.www.should eq("www.example.com")
    response.data.zip_code.should eq("691 54")
  end
end
