defmodule Notes.NoteController do
  use Notes.Web, :controller

  alias Notes.Note

  def index(conn, _params) do
    notes = Repo.all(Note)
    render conn, "index.json", notes: notes
  end

  def show(conn, %{"id" => id}) do
    note = Repo.get!(Note, id)
    render(conn, "show.json", note: note)
  end
end
