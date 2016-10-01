defmodule Super.SubSupervisor.ServidorGenerico do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init([]) do
    {:ok, Super.Estado.obtener_estado()}
  end

  def siguiente_numero do
    GenServer.call __MODULE__, :siguiente_numero
  end

  def incrementar_estado(delta) do
    GenServer.cast __MODULE__, {:incrementar_estado, delta}
  end

  def handle_call(:siguiente_numero, _from, estado_actual) do
    { :reply, estado_actual, estado_actual + 1 }
  end

  def handle_cast({:incrementar_estado, delta}, estado_actual) do
    { :noreply, estado_actual + delta}
  end

  def terminate(_reason, estado_antes_de_fallo) do
    Super.Estado.guardar_estado(estado_antes_de_fallo)
  end
end
