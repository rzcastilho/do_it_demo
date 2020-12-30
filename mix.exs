defmodule DoItDemo.MixProject do
  use Mix.Project

  def project do
    [
      app: :do_it_demo,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:do_it, git: "https://github.com/rzcastilho/do_it", branch: "develop"}
    ]
  end

  defp escript do
    [main_module: DoItDemo]
  end

end
