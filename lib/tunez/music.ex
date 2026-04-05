defmodule Tunez.Music do
  use Ash.Domain,
    otp_app: :tunez,
    extensions: [AshPhoenix]

  resources do
    resource Tunez.Music.Artist do
      define :create_artist, args: [:name, :biography], action: :create
      define :read_artists, action: :read
      define :get_artist_by_id, action: :read, get_by: :id
      define :update_artist, action: :update, args: [:name, :biography]
      define :destroy_artist, action: :destroy
    end
  end
end
