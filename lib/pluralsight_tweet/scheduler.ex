defmodule PluralsightTweet.Scheduler do
  def schedulet_file(schedule, file) do
    Quantum.add_job(
      schedule,
      fn -> PluralsightTweet.FileReader.get_strings_to_tweet(file)
            |> PluralsightTweet.TweetServer.tweet
      end
    )
  end
end
