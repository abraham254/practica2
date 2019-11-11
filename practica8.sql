create trigger TR_pedido_insert
on pedido 
for insert 
as
print 'hubo un cambio en la tabla pedido';
 create trigger TR_info
on cliente 
for insert 
as
begin
insert into log_pedido(
nombre_e,Fecha_Envio) select nombre_c,GETDATE(),'informacion detallada'
from inserted 
end

create trigger tr_cliente_delete
on cliente After Delete
as
begin 
set nocount on;
insert into envio(num_pedido1,fecha_envio)
select nombre_c, GETDATE(), 'se elimino cliente en la tabla'
from deleted
end
