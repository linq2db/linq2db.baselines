BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Order]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Order]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SubOrder]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [SubOrder]
(
	[Id]      Int NOT NULL,
	[OrderId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SubOrderDetail]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [SubOrderDetail]
(
	[Id]         Int           NOT NULL,
	[SubOrderId] Int           NOT NULL,
	[Code]       NVarChar(255)     NULL,
	[Date]       DateTime      NOT NULL,
	[IsActive]   Bit           NOT NULL
)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SubOrderDetail]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SubOrder]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Order]

