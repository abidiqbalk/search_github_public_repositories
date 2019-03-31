class SearchRepoController < ApplicationController
  def index
    if params[:search] && params[:search][:repo_name].present?
      response = RestClient::Request.execute(method: :get, url: 'https://api.github.com/search/repositories', headers: {params: {q: params[:search][:repo_name]}})
      response= JSON.parse(response)
      @urls = response["items"].map{|r| r["html_url"]}
    end
  end
end
