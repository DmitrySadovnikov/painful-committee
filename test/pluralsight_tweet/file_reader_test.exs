defmodule FileReaderTest do
  use ExUnit.Case
  import PluralsightTweet.FileReader
  import Mock

  test "passing a file" do
    str = get_strings_to_tweet(
      Path.join(
        "#{:code.priv_dir(:pluralsight_tweet)}",
        "sample.txt"
      )
    )

    assert str != nil
  end

  test "trims string" do
    with_mock File, [read!: fn(_) -> " ABC " end] do
      str = get_strings_to_tweet("doesn't exists.txt")
      assert str == "ABC"
    end
  end
end
