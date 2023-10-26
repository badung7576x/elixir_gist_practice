# ElixirGist

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

Course
---

Learn Course: https://www.youtube.com/playlist?list=PL2Rv8vpZJz4x1Svv79WdT0Da42kWt_hQ0

Checklist:
- [x] Introduction to Kickstart Your Elixir Journey
- [x] Part 1: Project Design
- [x] Part 2: Setting Up and User Authentication
- [ ] Part 3: Generating Our Schemas
- [ ] Part 4: Crafting the Navigation Bar
- [ ] Part 5: Animating Dropdown Menu with JS.toggle
- [ ] Part 5b: Collapsing Dropdown Menu
- [ ] Part 6: Creating the Footer
- [ ] Part 7: Crafting the 'Create Gist' View
- [ ] Part 8: Form Creation with LiveView and HEEx
- [ ] Part 9: Form Validation and Database Persistence
- [ ] Part 10: Adding Line Count Feature
- [ ] Part 11: Sync Scrolling Between Textareas


### Develop notes

1. Create project

```
$ mix phx.new elixir_gist --binary-id
```

2. Add authentication with `phx.gen.auth`

```
$ mix phx.gen.auth Accounts User users
$ mix deps.get
$ mix ecto.setup
```

3. Run server

```
$ mix phx.server
```
