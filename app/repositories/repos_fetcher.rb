class ReposFetcher < ApplicationRepository

  include HTTParty

  base_uri 'https://api.github.com'

  def initialize(created = 30.days.ago, sort = "stars", order = "desc", repos_per_page= 30)
    @options = { query: { q: "created:>#{created.to_s(:default_date)}", sort: sort, order: order, per_page: repos_per_page } }
  end

  def call

    response = self.class.get("/search/repositories", @options)

    if response.code == 200
      data = JSON.parse(response.body)
    else
      errors = response.message
    end

    {
      errors: errors,
      data: data
    }

  end
  
end