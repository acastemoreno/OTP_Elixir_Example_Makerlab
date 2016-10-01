# Super

**TODO: Add description**

## Ejemplo OTP Application in Elixir para MakerLab <3

```elixir
iex(1)> Super.SubSupervisor.ServidorGenerico.siguiente_numero
123
iex(2)> Super.SubSupervisor.ServidorGenerico.siguiente_numero
124
iex(3)> Super.SubSupervisor.ServidorGenerico.siguiente_numero
125
iex(4)> Super.SubSupervisor.ServidorGenerico.incrementar_estado 7
:ok
iex(5)> Super.SubSupervisor.ServidorGenerico.siguiente_numero    
133
iex(6)> Super.SubSupervisor.ServidorGenerico.incrementar_estado "holi"
##El procesos muere pero renace
iex(7)> Super.SubSupervisor.ServidorGenerico.siguiente_numero         
134
iex(8)> :observer.start
```
