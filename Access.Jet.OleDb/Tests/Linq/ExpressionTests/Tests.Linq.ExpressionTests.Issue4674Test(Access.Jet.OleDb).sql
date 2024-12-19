BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4674StockItem]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4674StockItem]
(
	[TenantId]    NVarChar(255)     NULL,
	[Code]        NVarChar(255)     NULL,
	[Description] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4674StockRoomItem]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4674StockRoomItem]
(
	[TenantId]      NVarChar(255)     NULL,
	[StockroomCode] NVarChar(255)     NULL,
	[ItemCode]      NVarChar(255)     NULL,
	[Quantity]      Decimal       NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4674StockRoomItem]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4674StockItem]

