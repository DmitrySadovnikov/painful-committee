defmodule PluralsightTweet.Scheduler do
  def schedulet_file(schedule, file) do
    Quantum.add_job(schedule, fn -> IO.puts
    PluralsightTweet.FileReader.get_strings_to_tweet(file)
    end)
  end
end
