defmodule Velkoz do

  @api_key Application.get_env(:velkoz, :lol_api_key)
  @time_frame Application.get_env(:velkoz, :lol_time_frame)
  @request_limit Application.get_env(:velkoz, :lol_request_limit)

  def get(url, region) do
    ExRated.check_rate( region, @time_frame, @request_limit )
    |>get_data(url)
  end

  def get_data({:ok, _ }, url) do
    final_url =
    case String.contains?(url, "?")  do
      true ->
        url <> "api_key=" <> @api_key
      _ ->
        url <> "?api_key=" <> @api_key
    end

    Velkoz.Client.get!(final_url).body
  end

  @doc """
  returns a error if we have hit our rate limit
  """
  def get_data({:error,_}, _ ) do
      { :error, "You have hit the rate limit" }
  end


end
