require 'rails_helper'

describe ReposFetcher do
  
  subject { ReposFetcher.call }

  describe "test with default params" do

    it "is a hash with expected keys" do
      expect(subject).to have_key(:data)
      expect(subject).to have_key(:errors)
    end

    it "is successful with correct data" do
      expect(subject[:errors]).to be_nil
      expect(subject[:data]).not_to be_nil
      expect(subject[:data]['items'].count).to be <= 100  
    end

  end
  
end