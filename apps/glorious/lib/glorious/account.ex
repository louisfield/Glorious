defmodule Glorious.Account do
  import Glorious.Util


  def get_summoner_by_name(summoner_name, region) do
    case parse_url("/lol/summoner/v4/summoners/by-name/#{summoner_name}", region) do
      {:ok, resp} -> resp
      {:error, _err} -> :error
    end
  end

  def get_summoner_by_acc_id(encrypted_account_id, region) do
    case parse_url("/lol/summoner/v4/summoners/by-account/#{encrypted_account_id}", region) do
      {:ok, resp} -> resp
      {:error, _err} -> :error
    end
  end

  def get_summoner_by_puuid(encrypted_puuid, region) do
    case parse_url("/lol/summoner/v4/summoners/by-puuid/#{encrypted_puuid}", region) do
      {:ok, resp} -> resp
      {:error, _err} -> :error
    end
  end

  def get_summoner_by_summ_id(summoner_id, region) do
    case parse_url("/lol/summoner/v4/summoners/#{summoner_id}", region) do
      {:ok, resp} -> resp
      {:error, _err} -> :error
    end
  end
end
