defmodule Velkoz do

@api_key Application.get_env(:velkoz, :lol_api_key)

def get(url) do
  HTTPotion.get  "#{url}?api_key=#{getApi}"
end

def getApi() do
  Application.get_env(:velkoz, :lol_api_key)
end

end
