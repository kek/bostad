defmodule Bostad.DownloadTest do
  use ExUnit.Case

  test ".download" do
    assert Bostad.Download.download("https://bostad.stockholm.se/Lista/") =~ "Bostadsförmedlingen"
  end

  test ".save" do
    expected_file = "tmp/lista.html"
    Bostad.Download.save("https://bostad.stockholm.se/Lista/", expected_file)

    assert File.exists? expected_file

    File.rm! expected_file
  end
end
