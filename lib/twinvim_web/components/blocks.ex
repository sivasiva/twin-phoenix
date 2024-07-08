defmodule TwinvimWeb.Components.Blocks do
  use TwinvimWeb, :html
  use Phoenix.Component

  def site_nav(assigns) do
    ~H"""
    <ul class="relative z-10 flex items-center justify-end gap-4 px-4 sm:px-6 lg:px-8">
      <%= if @current_user do %>
        <li class="text-[0.8125rem] leading-6 text-zinc-900">
          <%= @current_user.email %>
        </li>
        <li>
          <.link
            href={~p"/users/settings"}
            class="text-[0.8125rem] leading-6 text-zinc-900 font-semibold hover:text-zinc-700"
          >
            settings
          </.link>
        </li>
        <li>
          <.link
            href={~p"/users/log_out"}
            method="delete"
            class="text-[0.8125rem] leading-6 text-zinc-900 font-semibold hover:text-zinc-700"
          >
            log out
          </.link>
        </li>
      <% else %>
        <li>Not logged in</li>
        <li>
          <.link
            href={~p"/users/register"}
            class="text-[0.8125rem] leading-6 text-zinc-900 font-semibold hover:text-zinc-700"
          >
            register
          </.link>
        </li>
        <li>
          <.link
            href={~p"/users/log_in"}
            class="text-[0.8125rem] leading-6 text-zinc-900 font-semibold hover:text-zinc-700"
          >
            log in
          </.link>
        </li>
      <% end %>
    </ul>
    """
  end
end
