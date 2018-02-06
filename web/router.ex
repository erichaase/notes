defmodule Notes.Router do
  use Notes.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Notes do
    pipe_through :api

    resources "/notes", NoteController, only: [:index]
  end
end
