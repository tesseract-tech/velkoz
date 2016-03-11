defmodule Velkoz.Mixfile do
  use Mix.Project

  def project do
    [app: :velkoz,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger,:ex_rated,:httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.8.0"},
      {:ex_rated, "~> 1.2.1"},
      {:poison, "~> 2.1"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev}
  ]
  end

  defp description do
    """
    Velkoz is an api wrapper for the game leauge of legends. You can find the api documentation :: https://developer.riotgames.com/api
    """
  end

  defp package do
    [# These are the default files included in the package
     files: ["lib", "mix.exs", "README*", "README*", "LICENSE*"],
     maintainers: ["Tim Smith"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/tesseract-tech/velkoz",
              "Docs" => "https://hexdocs.pm/velkoz/0.0.1"}]
  end

end
