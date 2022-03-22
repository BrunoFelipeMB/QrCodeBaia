defmodule MobaiaWeb.QrCodeController do
  use MobaiaWeb, :controller

  def show(conn, %{"cpf" => cpf}) do
    cpf
    |> is_valid()
    |> renderJSON(conn, cpf)
  end

  defp is_valid(cpf) do
    cpf
    |> String.length() == 11
  end

  defp renderJSON(true, conn, cpf) do
    with {:ok, %{status_code: 200}, filename} <- Mobaia.createQrCode(cpf) do
      conn
      |> put_status(:ok)
      |> render("link.json", filename: filename)
    end
  end

  defp renderJSON(false, conn, _) do
    conn
    |> put_status(:forbidden)
    |> render("error.json", error: "CPF not valid")
  end
end
