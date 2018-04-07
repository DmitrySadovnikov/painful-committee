defmodule PluralsightTweet.MixProject do
  use Mix.Project

  def project do
    [
      app: :pluralsight_tweet,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :quantum, :extwitter],
      mod: {PluralsightTweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.8.1"},
      {:quantum, "~> 1.9"},
      {:extwitter, "~> 0.8.3"},
      {:oauth, github: "tim/erlang-oauth"},
      {:mock, "~> 0.2.1"},
      {:mix_test_watch, "~> 0.4.0"},
      {:excoveralls, "~> 0.4", only: :test}
    ]
  end
end
