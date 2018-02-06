defmodule Notes.Factory do
  @moduledoc """
  This module provides factories for various models
  """

  use ExMachina.Ecto, repo: Notes.Repo

  def note_factory do
    %Notes.Note{
      title: "Something I need to do",
      description: "List of steps I need to complete"
    }
  end
end
