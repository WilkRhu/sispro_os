defmodule SisproOs.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  schema "users" do
    field(:name, :string)
    field(:email, :string)
    field(:password, :string, virtual: true)
    field(:password_hash, :string)
    field(:ddd, :string)
    field(:phone, :string)
    field(:cpf, :string)
    field(:email_verified, :boolean)
    field(:token, :string)
    field(:type, :string)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :password, :ddd, :phone, :cpf, :type])
    |> validate_required([:email, :password, :type])
  end
end
