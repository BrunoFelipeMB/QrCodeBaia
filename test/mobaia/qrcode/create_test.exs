defmodule Mobaia.QrCode.CreateTest do
  use Mobaia.DataCase, async: true

  alias Mobaia.QrCode.Create

  describe "generate/1" do
    test "when cpf is valid, returns the aws upload" do
      cpf = "12312312300"

      response = Create.generate(cpf)

      assert "test" = response
    end
  end
end
