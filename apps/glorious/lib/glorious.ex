defmodule Glorious do

  @moduledoc """
  Glorious keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  def get(url) do
    case HTTPoison.get(url) do
      {:ok, resp} -> Poison.decode(resp.body)
      {:error, _error} -> :error
    end
  end

end
