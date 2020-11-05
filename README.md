# How to run

gem install rails
rake db:create
rake db:migrate
rails s

## Guide to configure layout

https://medium.com/@adamlangsner/google-oauth-rails-5-using-devise-and-omniauth-1b7fa5f72c8e

# Entities

rails g model admin email:string full_name:string uid:string avatar_url:string

rails g scaffold country id:primary_key name:string

rails g scaffold competition id:primary_key name:string

rails g scaffold team id:primary_key name:string country:references

rails g scaffold method id:primary_key name:string description:string

rails g scaffold bet id:primary_key bet_date:date competition:references country:references team1:references team2:references stake:decimal(5,2) odd:decimal(5,2) gain:decimal(5,2) roe:decimal(5,2) method:references score:string minutes:number score_by:string description:string