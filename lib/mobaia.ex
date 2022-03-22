defmodule Mobaia do
  alias Mobaia.QrCode.Create, as: GenerateQrCode

  @moduledoc """
  Mobaia keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  defdelegate createQrCode(cpf), to: GenerateQrCode, as: :generate
end