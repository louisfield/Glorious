defmodule Glorious.Util do

  @token Application.fetch_env!(:riot_api, :key)

  def region(code) do
    "https://" <> Atom.to_string(code) <> ".api.riotgames.com"
  end

  @spec parse_url(binary, atom) ::
          :error
          | {:error, %{:__exception__ => true, :__struct__ => atom, optional(atom) => any}}
          | {:ok, false | nil | true | binary | list | number | map}
  def parse_url(url, region) do
    Glorious.get(region(region) <> url <> "?api_key=#{@token}")
  end

end
