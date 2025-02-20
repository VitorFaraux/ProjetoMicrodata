USE [TesteVitorFarauxMicroData]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 20/02/2025 07:55:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clientes](
	[IDClientes] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IDClientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


CREATE TABLE [dbo].[Pedidos](
	[IDPedido] [int] IDENTITY(1,1) NOT NULL,
	[IDCliente] [int] NOT NULL,
	[DataPedido] [datetime] NOT NULL,
	[ValorTotal] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Pedidos_1] PRIMARY KEY CLUSTERED 
(
	[IDPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]


GO


ALTER TABLE [dbo].[Pedidos] ADD  CONSTRAINT [DF_Pedidos_DataPedido]  DEFAULT (getdate()) FOR [DataPedido]
GO

ALTER TABLE [dbo].[Pedidos]  WITH CHECK ADD  CONSTRAINT [FK_Pedidos_Clientes] FOREIGN KEY([IDCliente])
REFERENCES [dbo].[Clientes] ([IDClientes])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Pedidos] CHECK CONSTRAINT [FK_Pedidos_Clientes]

CREATE TABLE [dbo].[ItensPedido](
	[IDItem] [int] NOT NULL,
	[IDPedido] [int] NULL,
	[Produto] [varchar](100) NULL,
	[Quantidade] [numeric](10, 4) NULL,
	[PrecoUnitario] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ItensPedido] PRIMARY KEY CLUSTERED 
(
	[IDItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ItensPedido]  WITH CHECK ADD  CONSTRAINT [FK_ItensPedido_Pedidos] FOREIGN KEY([IDPedido])
REFERENCES [dbo].[Pedidos] ([IDPedido])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[ItensPedido] CHECK CONSTRAINT [FK_ItensPedido_Pedidos]

GO


