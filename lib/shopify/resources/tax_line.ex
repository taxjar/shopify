defmodule Shopify.TaxLine do
  @moduledoc false

  @derive [Poison.Encoder]

  defstruct [
    :price,
    :rate,
    :title,
    :price_set,
    :channel_liable
  ]
end
