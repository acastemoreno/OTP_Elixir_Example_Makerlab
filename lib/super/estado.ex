defmodule Super.Estado do
  use GenServer
  #####
  # External API
  def start_link(estado_inicial) do
    GenServer.start_link(__MODULE__, estado_inicial, name: __MODULE__)
  end
  def guardar_estado(nuevo_valor) do
    GenServer.cast __MODULE__, {:guardar_estado, nuevo_valor}
  end
  def obtener_estado() do
    GenServer.call __MODULE__, :obtener_estado
  end
  #####
  # Implementacion GenServer
  def handle_call(:obtener_estado, _from, estado_actual) do
    {:reply, estado_actual, estado_actual}
  end
  def handle_cast({:guardar_estado, nuevo_valor}, _estado_actual) do
    {:noreply, nuevo_valor}
  end
end
