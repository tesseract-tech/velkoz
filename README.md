# velkoz [![Build Status](https://travis-ci.org/Tim-Machine/velkoz.svg?branch=master)](https://travis-ci.org/Tim-Machine/velkoz)

More information coming soon

# Using Velkoz with mix

```elixir
def deps do
[
  {:velkoz, "~>0.0.1"}
]
end
```

#Configuration
```bash
export LOL_API_KEY='00000000000000000000000000000' #Get your api key from the leage website
export LOL_TIME_FRAME='0000000000000000000000000000000' # default time from league should be 10000000
export LOL_REQUEST_LIMIT='0000000000000000000000000' # default reqest limit should be 500
```


# Example usage

```elixir
Velkoz.Summoner.by_name("na","zerovapor")
#%{"zerovapor" => %{"id" => 33739329, "name" => "zerovapor",
#    "profileIconId" => 989, "revisionDate" => 1457495041000,
#    "summonerLevel" => 30}}
```


## Other API Libraries

Be sure to check out the other libraries out there!

[Viktor](https://github.com/josephyi/viktor)
