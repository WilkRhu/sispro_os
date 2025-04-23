defmodule SisproOsWeb.UserRegistrationView do
  use SisproOsWeb, :view

  def render("user.json", %{user: user}) when is_map(user) do
    %{
      user: %{
        id: user.id,
        name: user.name,
        emai: user.email
      }
    }
  end

  def render("user.json", %{user: user}) when is_list(user) do
    order = [:id, :name, :email, :ddd, :phone, :type]

    user
    |> Enum.map(fn x ->
      Map.take(x, order)
    end)
  end
end
