defmodule Velkoz do

  @api_key Application.get_env(:velkoz, :lol_api_key)

  def get(url, region) do

    { time_fame, _ } = Application.get_env(:velkoz, :lol_time_frame)
    { request_limit, _ } = Application.get_env(:velkoz, :lol_request_limit)

    case ExRated.check_rate( region, time_fame, request_limit ) do
      { :ok, _ }->
          Velkoz.Client.get!("#{url}?api_key=#{@api_key}").body
      { :error, _ }->
        { :error, "You have hit the rate limit" }
    end

  end


end
