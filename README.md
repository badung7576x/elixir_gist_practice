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
- [x] Part 3: Generating Our Schemas
- [x] Part 4: Crafting the Navigation Bar
- [ ] Part 5: Animating Dropdown Menu with JS.toggle
- [ ] Part 5b: Collapsing Dropdown Menu
- [ ] Part 6: Creating the Footer
- [ ] Part 7: Crafting the 'Create Gist' View
- [ ] Part 8: Form Creation with LiveView and HEEx
- [ ] Part 9: Form Validation and Database Persistence
- [ ] Part 10: Adding Line Count Feature
- [ ] Part 11: Sync Scrolling Between Textareas

### Database Design

![Database Design](/readme_images/database.png)

### Develop notes

#### 1. Create project

```bash
$ mix phx.new elixir_gist --binary-id
```

#### 2. Add authentication with `phx.gen.auth`

```bash
$ mix phx.gen.auth Accounts User users
$ mix deps.get
$ mix ecto.setup
```

#### 3. Run server

```bash
$ mix phx.server
```

#### 4. Create context

Command: 

```bash
$ mix phx.gen.context <Context> <Schema> <table> <fields>
```

Read more about context: https://hexdocs.pm/phoenix/Mix.Tasks.Phx.Gen.Context.html

Contexts: The context is an Elixir module that serves as an API boundary for the given resource. <br>
Schema: The schema is responsible for mapping the database fields into an Elixir struct.

Read more about schema: https://hexdocs.pm/ecto/Ecto.Schema.html <br>
-> Change relationship in schema. 

```bash
# Table gists
$ mix phx.gen.context Gists Gist gists user_id:references:users name:string description:text markup_text:text
$ mix phx.gen.context Gists SavedGist saved_gists user_id:references:users gist_id:references:gists
$ mix phx.gen.context Comments Comment comments user_id:references:users gist_id:references:gists markup_text:text
$ mix ecto.migrate
```





