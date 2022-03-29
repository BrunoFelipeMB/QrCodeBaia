defmodule Mobaia.QrCode.Create do
  @server_url "http://10.10.19.201:3300"
  def generate(cpf) do
    filename = generateFileName(cpf)
    qr_code_content = "#{@server_url}/baia/fila/#{filename}"

    qr_code_png =
      qr_code_content
      |> EQRCode.encode()
      |> EQRCode.png()

    {:ok, Mobaia.Database.Insert.call(qr_code_png, filename) |> ExAws.request!(), filename}
    # File.write("#{filename}.png", qr_code_png, [:binary])
  end

  defp generateFileName(cpf) do
    "#{:os.system_time(:millisecond)}_#{cpf}"
  end
end
