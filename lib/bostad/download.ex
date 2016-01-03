defmodule Bostad.Download do
  def download(url) do
    response = HTTPotion.get(url)
    :crypto
    case response do
      %HTTPotion.Response{status_code: 200, body: body} -> body
      %HTTPotion.Response{status_code: status_code, body: _} -> "(#{status_code})"
      # %HTTPotion.HTTPError{reason: {code, message}} -> "Error: #{code} - #{message}"
    end
  end

  def save(url, filename) do
    body = download(url)
    File.write!(filename, body)
  end
end
