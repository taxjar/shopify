defmodule Shopify.Error do
  @moduledoc false

  alias Shopify.Error

  defstruct [
    :id,
    :reason
  ]

  def new(id, reason) do
    {:error, %Error{id: id, reason: reason}}
  end
end
