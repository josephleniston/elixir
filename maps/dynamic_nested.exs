nested = %{
  buttercup: %{
    actor: %{
      first: "Robin",
      last: "Wright"
    },
    role: "princess"
  },
  westly: %{
    actor: %{
      first: "Cary",
      last: "Ewles"
    },
    role: "farm boy"
  }
}

IO.inspect get_in(nested, [:buttercup])

IO.inspect get_in(nested, [:buttercup, :actor])

IO.inspect get_in(nested, [:buttercup, :actor, :first])

IO.inspect put_in(nested, [:buttercup, :actor, :last], "Elwes")
