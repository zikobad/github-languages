require 'rails_helper'

describe LanguagesFetcher do
  
  subject { LanguagesFetcher.call }

  describe "test with with data from repos_fetcher" do

    it "is a hash with with correct keys" do
      expect(subject).to be_kind_of(Hash)
      expect(subject).to have_key(:data)
      expect(subject).to have_key(:errors)
    end

    it "is successful with correct data" do
      expect(subject[:errors]).to be_nil
      expect(subject[:data]).to be_kind_of(Array)
      expect(subject[:data]).not_to be_empty
      expect(subject[:data].first).to have_key(:language)
      expect(subject[:data].first).to have_key(:repo_count)
      expect(subject[:data].first).to have_key(:repos)
    end
    
  end

end