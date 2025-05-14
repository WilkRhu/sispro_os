defmodule SisproOsWeb.UserRegistrationView do
  use SisproOsWeb, :view

  def render("user.json", %{user: user}) when is_map(user) do
    %{
      user: %{
        id: user.id,
        name: user.name,
        emai: user.email,
        role: user.role
      }
    }
  end

  def render("error.json", %{changeset: changeset}) do
    %{
      errors: Ecto.Changeset.traverse_errors(changeset, fn {msg, _opts} -> msg end)
    }
  end
end
