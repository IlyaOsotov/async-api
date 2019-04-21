defmodule AsyncApiWeb.Router do
  use AsyncApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api/v1", AsyncApiWeb.Api do
    pipe_through :api

    get "/orders/:id", OrderController, :show
    post "/orders/", OrderController, :create
  end

  scope "/", AsyncApiWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", AsyncApiWeb do
  #   pipe_through :api
  # end
end
