defmodule Mobaia.Database.Insert do
  def call(file, filename) do
    ExAws.S3.put_object("qrcodebaia", filename, file)
  end
end
