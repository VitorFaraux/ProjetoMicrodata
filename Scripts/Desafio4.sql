CREATE FUNCTION fn_PedidosCliente (@IDCliente INT)
RETURNS TABLE
AS
RETURN 
(
    SELECT 
		p.IDPedido, p.DataPedido, ip.Produto,ip.Quantidade,ip.PrecoUnitario,(ip.Quantidade *ip.PrecoUnitario) SubTotal 
	FROM Pedidos p
	inner join ItensPedido ip on ip.IDPedido = p.IDPedido
	WHERE p.IDCliente = @IDCliente
);