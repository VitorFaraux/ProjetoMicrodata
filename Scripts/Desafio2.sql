select 
	c.Nome,p.DataPedido,p.ValorTotal,
	(
		select sum(p2.ValorTotal) from pedidos p2
		where  p2.IDCliente = p.IDCliente and p2.DataPedido <= p.DataPedido
	) TotalAcumulado
from Pedidos p
inner join Clientes c on c.IDClientes = p.IDCliente
where p.IDCliente = 1 and p.IDPedido = 2