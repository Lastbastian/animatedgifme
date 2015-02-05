require 'net/http'
require 'json'

uri = URI('https://api.github.com/users/octocat')
response = New::HTTP.get uri
octocat = JSON.parse response

octocat.keys
# ["login", "id", "avatar_url", "gravatar_id", "url", "html_url", "followers_url", "following_url", "gists_url", "starred_url", "subscriptions_url", "organizations_url", "repos_url", "events_url", "received_events_url", "type", "name", "company", "blog", "location", "email", "hireable", "bio", "public_repos", "followers", "following", "created_at", "updated_at", "public_gists"]

octocat["followers"]
#398
octocat["public_repos"]
#3
octocat["hireable"]
#false