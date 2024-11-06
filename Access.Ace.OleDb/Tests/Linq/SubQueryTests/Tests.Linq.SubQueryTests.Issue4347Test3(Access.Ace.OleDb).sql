BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TransactionEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TransactionEntity]
(
	[Id]      Guid     NOT NULL,
	[ValidOn] DateTime NOT NULL,

	CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [LineEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [LineEntity]
(
	[Id]            Guid          NOT NULL,
	[TransactionId] Guid          NOT NULL,
	[Amount]        Decimal       NOT NULL,
	[Currency]      NVarChar(255)     NULL,

	CONSTRAINT [PK_LineEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [LineEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TransactionEntity]

