create view pago
as
select num_pedido, Fecha_envio, nombre  
from pedido inner join modo_pago on num_pago1=num_pago
where nombre=05

create view inventario
as
select num_pedido, Fecha_envio,cantidad
from pedido inner join producto on id_producto1=id_producto
where Fecha_envio=190118

create view vista
as
select id_producto, cantidad, nombre, A_ciudad, A_calle, nombre_e, Fecha_Envio
from producto inner join categoria on id_categoria1=id_categoria
inner join pedido on pedido.id_producto1=id_producto
where id_producto=2 

create view ventas
as
select id_cliente, calle,ciudad,Fecha_Envio, cantidad, nombre
from cliente inner join pedido on id_cliente1=id_cliente
inner join producto on id_producto1=id_producto
inner join categoria on id_categoria1=id_categoria
where id_cliente=5

create view prueba
as
select num_pago,nombre,nombre_e,nombre_c,cantidad,descripcion 
from modo_pago inner join pedido on num_pago1=num_pago
inner join cliente on id_cliente1=id_cliente
inner join producto on id_producto1=id_producto
inner join categoria on id_categoria1=id_categoria
where nombre_c='Abraham'

