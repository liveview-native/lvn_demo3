defmodule LvnDemo3Web.Router do
  use LvnDemo3Web, :router

  pipeline :browser do
    plug :accepts, ["html", "json", "swiftui"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {LvnDemo3Web.Layouts, :root}, swiftui: {LvnDemo3Web.LayoutsSwiftUI, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LvnDemo3Web do
    pipe_through :browser

    # get "/", PageController, :home
    live_session :root do
      live "/", HomeLive
    end
    live_session :users do
      live "/user", UserLive
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", LvnDemo3Web do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:lvn_demo3, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: LvnDemo3Web.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
