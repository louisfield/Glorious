defmodule Glorious.Spectate do
  import Glorious.Util

  @spec spectate_player(any, atom) ::
          :error
          | {:error, %{:__exception__ => true, :__struct__ => atom, optional(atom) => any}}
          | {:ok, false | nil | true | binary | list | number | map}
  def spectate_player(encrypted_id, region) do
    parse_url("/lol/spectator/v4/active-games/by-summoner/#{encrypted_id}", region)
  end
end
