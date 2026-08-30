defmodule Workflows.MixProject do
  use Mix.Project

  @source_url "https://github.com/supabase/workflows"
  @version "0.2.0"

  def project do
    [
      name: "Workflows",
      app: :workflows,
      version: @version,
      elixir: "~> 1.20",
      build_path: "../../_build",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: dialyzer(),
      description: description(),
      package: package(),
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:warpath, "~> 0.6.0"},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: [:dev, :test], runtime: false}
    ]
  end

  defp dialyzer do
    [
      plt_core_path: "../../priv/plts",
      plt_file: {:no_warn, "../../priv/plts/workflows.plt"}
    ]
  end

  defp description() do
    """
    Amazon States Language workflow interpreter.
    """
  end

  defp package() do
    [
      files: ~w(lib mix.exs README.md CHANGELOG.md LICENSE),
      maintainers: ["The Supabase Team"],
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs() do
    [
      main: "Workflows",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/workflows",
      source_url: @source_url,
      extras: ["CHANGELOG.md", "LICENSE"]
    ]
  end
end
