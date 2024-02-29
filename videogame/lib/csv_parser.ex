defmodule Videogame.Parser do
  def read_and_split_csv do
      csv_content = File.stream!("priv/video_games.csv")
      |> CSV.decode(headers: true)
      |> Stream.take_while(&(&1 != nil))
      |> Enum.map(fn {:ok, val} -> val end)
      |> IO.inspect()

      csv_content
  end
end
Videogame.Parser.read_and_split_csv()
