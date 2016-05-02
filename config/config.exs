# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.


config :velkoz,
   champion_version: "1.2",
   currentGame_version: "1.0",
   featuredGames_version: "1.0",
   game_version: "1.3",
   league_version: "2.5",
   lolStaticData_version: "1.2",
   lolStatus_version: "1.0",
   match_version: "2.2",
   matchList_version: "2.2",
   status_version: "1.3",
   summoner_version: "1.4",
   team_version: "2.4",
   platform_ids: %{br: "BR1",eune: "EUN1", euw: "EUW1",kr: "KR",lan: "LA1", las: "LA2", na: "NA1",oce: "OC1", tr: "TR1",ru: "RU", pbe: "PBE1"},
   regions: ["br","eune","euw","kr","lan","las","na","oce","tr","ru","pbe","global"],
   game_types: ["RANKED_SOLO_5x5","RANKED_TEAM_3x3","RANKED_TEAM_5x5"],
   lol_api_key: System.get_env("LOL_API_KEY"),  #Get your api key from the leage website
   lol_time_frame:  String.to_integer(System.get_env("LOL_TIME_FRAME")), # default time from league should be 10000000
   lol_request_limit: String.to_integer(System.get_env("LOL_REQUEST_LIMIT")) # default reqest limit should be 500

# You can configure for your application as:
#
#     config :velkoz, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:velkoz, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# It is also possible to import configuration files, relative to this
# directory. For example, you can emulate configuration per environment
# by uncommenting the line below and defining dev.exs, test.exs and such.
# Configuration from the imported file will override the ones defined
# here (which is why it is important to import them last).
#
#     import_config "#{Mix.env}.exs"
