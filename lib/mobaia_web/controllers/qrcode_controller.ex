defmodule MobaiaWeb.QrCodeController do
  use MobaiaWeb, :controller

  def show(conn, %{"cpf" => cpf}) do
    with {:ok, %{status_code: 200}, filename} <- Mobaia.createQrCode(cpf) do
      conn
      |> put_status(:ok)
      |> render("link.json", filename: filename)
    end
  end
end
