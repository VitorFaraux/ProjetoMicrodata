CREATE PROCEDURE sp_RemoveLancamentoPedido
    @IDPedido INT
AS
BEGIN
	DECLARE @PedidoExiste int;	

    BEGIN TRANSACTION;
	SET @PedidoExiste = (SELECT IDPedido FROM Pedidos WHERE IDPedido = @IDPedido);
    IF @PedidoExiste is null
    BEGIN
        PRINT 'Pedido n�o existe!';
        ROLLBACK TRANSACTION;
        RETURN;
    END

    Delete from ItensPedido WHERE IDPedido = @IDPedido;

    COMMIT TRANSACTION;
    PRINT 'Lan�amentos removidos com sucesso';
END;