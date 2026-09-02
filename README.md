# Workflows

This is an [umbrella project](https://hexdocs.pm/elixir/dependencies-and-umbrella-projects.html#umbrella-projects)
housing the `workflows` library: a workflow interpreter based on the
[Amazon States Language](https://states-language.net/) specification.

## Layout

- `apps/workflows` — the publishable `workflows` library. See its
  [README](apps/workflows/README.md) for installation and usage.

## Development

This repo uses [mise](https://mise.jdx.dev/) to pin the Erlang/Elixir toolchain
(see `mise.toml`). After installing mise:

```sh
mise install
mix deps.get
mix test
```

Common tasks run from the repo root and apply across all umbrella apps:

```sh
mix format --check-formatted
mix credo
mix dialyzer
```

## License

This repo is licensed under Apache 2.0.
