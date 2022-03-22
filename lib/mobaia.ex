defmodule Mobaia do
  alias Mobaia.QrCode.Create, as: GenerateQrCode

  defdelegate createQrCode(cpf), to: GenerateQrCode, as: :generate
end
