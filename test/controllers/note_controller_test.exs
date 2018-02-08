defmodule Notes.NoteControllerTest do
  use Notes.ConnCase

  test "#index renders a list of notes" do
    conn = build_conn()
    note = insert(:note)

    conn = get conn, note_path(conn, :index)

    assert json_response(conn, 200) == %{"notes" => [to_map(note)]}
  end

  test "#show renders a single note" do
    conn = build_conn()
    note = insert(:note)

    conn = get conn, note_path(conn, :show, note)

    assert json_response(conn, 200) == %{"note" => to_map(note)}
  end

  defp to_map(note) do
    %{
      "title" => note.title,
      "description" => note.description,
      "inserted_at" => NaiveDateTime.to_iso8601(note.inserted_at),
      "updated_at" => NaiveDateTime.to_iso8601(note.updated_at)
    }
  end
end
