defmodule Shopify.Location do
  @derive [Poison.Encoder]
  @singular "location"
  @plural "locations"

  use Shopify.Resource, import: [:find, :all]

  alias Shopify.Location

  defstruct [
    :name,
    :address1,
    :address2,
    :zip,
    :city,
    :province,
    :country,
    :phone,
    :created_at,
    :updated_at
  ]

  @doc false
  def empty_resource do
    %Location{}
  end

  @doc false
  def find_url(id), do: @plural <>  "/#{id}.json"

  @doc false
  def all_url, do: @plural <> ".json"
end
