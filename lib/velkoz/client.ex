defmodule Velkoz.Client do
  use HTTPoison.Base

  def process_url(url) do
    url
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
  end
  def process_response_body(response), do: response
  
end
