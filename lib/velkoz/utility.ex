defmodule Velkoz.Utility do

  @regions Application.get_env(:velkoz, :regions)
  @platform_ids  Application.get_env(:velkoz, :platform_ids)


  def base_url(region) when region in @regions do
        "https://#{region}.api.pvp.net"
  end

  @doc """
    returns platform_id provides the region is valid
  """
  def get_platform_id(region)do
    case Map.has_key?(@platform_ids, String.to_atom(region))do
        true -> @platform_ids[String.to_atom(region)]
    end
  end

  def get_endpoint_version(endpoint) do
    Application.get_env(:velkoz, endpoint)
  end

  @doc """
    takes a map and converts it to a query string
   example  build_qeury_string %{locale: "en_US", another: "test"}
  """
  def build_query_string(data) when is_map(data) do
    Enum.map_join(data, "&", fn {key, value} -> "#{key}=#{value}" end)
  end

end
