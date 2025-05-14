defmodule SisproOs.Repo.Migrations.CreateUsersAuthTables do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :uuid, primary_key: true, null: false
      add :name, :string
      add :ddd, :string
      add :phone, :string
      add :email, :string, null: false
      add :cpf, :string, null: false
      add :hashed_password, :string, null: false
      add :token, :string
      add :email_verified, :boolean
      add :role, :string
      timestamps()
    end

    create unique_index(:users, [:email])
    create unique_index(:users, [:cpf])

    create table(:users_tokens) do
      add :user_id, references(:users, type: :uuid, on_delete: :delete_all), null: false
      add :token, :binary, null: false
      add :context, :string, null: false
      add :sent_to, :string
      timestamps(updated_at: false)
    end

    create index(:users_tokens, [:user_id])
    create unique_index(:users_tokens, [:context, :token])
  end
end
