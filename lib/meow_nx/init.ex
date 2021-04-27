defmodule MeowNx.Init do
  import Nx.Defn

  def real_random_uniform(n, length, min, max) do
    fn ->
      real_random_uniform_impl(n: n, length: length, min: min, max: max)
    end
  end

  defn real_random_uniform_impl(opts \\ []) do
    opts = keyword!(opts, [:n, :length, :min, :max])
    n = opts[:n]
    length = opts[:length]
    min = opts[:min]
    max = opts[:max]

    Nx.random_uniform({n, length}, min, max)
  end
end