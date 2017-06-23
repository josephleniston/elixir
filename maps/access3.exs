cast = %{
  buttercup: %{
    actor: {"Robin", "Wright"},
    role: "princess"
  },
  westly: %{
    actor: {"Cary", "Ewles"},
    role: "farm boy"
  }
}

IO.inspect get_in(cast, [Access.key(:westly, :buttercup), :actor, Access.elem(1)])

IO.inspect get_and_update_in(cast, [Access.key(:buttercup), :role], fn (val) -> {val, "Queen"} end)
