defmodule MobaiaWeb.QrCodeView do
  use MobaiaWeb, :view

  def render("link.json", %{filename: filename}) do
    %{url: "https://qrcodebaia.s3.sa-east-1.amazonaws.com/#{filename}"}
  end

  def render("error.json", %{error: error}) do
    %{error: error}
  end
end
