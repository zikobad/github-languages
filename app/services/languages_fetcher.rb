class LanguagesFetcher < ApplicationService

  def initialize
    @repos = ReposFetcher.call
  end

  def call

    response = { data: [], errors: nil }

    unless @repos[:errors].nil?
      response[errors] = @repos[errors]
      return response
    end

    data = @repos[:data] if @repos[:errors].nil?

    repos_by_languges = data['items'].group_by {|x| x['language']}

    repos_by_languges.keys.each do |language|
      response[:data].push({
                      language: language,
                      repo_count: repos_by_languges[language].count,
                      repos: repos_by_languges[language]
                    }) unless language.nil? # ignore repos with no language
    end

    response
  end

end