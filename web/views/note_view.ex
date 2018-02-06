defmodule Notes.NoteView do
  use Notes.Web, :view

  def render("index.json", %{notes: notes}) do
    %{
      notes: Enum.map(notes, &note_json/1)
    }
  end

  def note_json(note) do
    %{
      title: note.title,
      description: note.description,
      inserted_at: note.inserted_at,
      updated_at: note.updated_at
    }
  end
end
