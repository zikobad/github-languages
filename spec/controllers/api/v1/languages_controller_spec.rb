require 'rails_helper'

describe Api::V1::LanguagesController do
    describe "get languages route", :type => :request do
        before {get '/api/v1/languages'}

        it 'returns status code 200' do
            expect(response).to have_http_status(:success)
        end

        it 'returns languages with no erros' do
            expect(JSON.parse(response.body)['error']).to be_nil
            expect(JSON.parse(response.body)['data'].size).to be > 0
            expect(JSON.parse(response.body)['data'][0]).to have_key('language')
            expect(JSON.parse(response.body)['data'][0]).to have_key('repos')  
            expect(JSON.parse(response.body)['data'][0]).to have_key('repo_count')  
        end

    end
    
end