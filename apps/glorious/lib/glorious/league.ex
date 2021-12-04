defmodule Glorious.League do
  import Glorious.Util


  def get_player_rank(encrypted_id, region) do
    parse_url("/lol/league/v4/entries/by-summoner/#{encrypted_id}", region)
  end
end
