defmodule Mobaia.QrCode.Create do
  def generate(cpf) do
    qr_code_content = "http://api.escolamobile.com.br/bot/users/#{cpf}"

    qr_code_png =
      qr_code_content
      |> EQRCode.encode()
      |> EQRCode.png()

    filename = generateFileName(cpf)

    {:ok, Mobaia.Database.Insert.call(qr_code_png, filename) |> ExAws.request!(), filename}
  end

  defp generateFileName(cpf) do
    "#{:os.system_time(:millisecond)}_#{cpf}.png"
  end
end
