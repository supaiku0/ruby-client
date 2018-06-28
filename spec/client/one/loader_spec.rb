require "spec_helper"

describe ArkEcosystem::Client::API::One::Loader do
  before do
    @client = ArkEcosystem::Client::Connection.new(
      {
        host: "https://dexplorer.ark.io:8443/api/",
        version: 1
      }
    ).loader
  end

  describe ".status" do
    it "should be ok" do
      response = @client.status
      expect(response.code).to be 200
    end
  end

  describe ".sync" do
    it "should be ok" do
      response = @client.sync
      expect(response.code).to be 200
    end
  end

  describe ".autoconfigure" do
    it "should be ok" do
      response = @client.autoconfigure
      expect(response.code).to be 200
    end
  end
end