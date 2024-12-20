BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ColumnOrderTest]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [ColumnOrderTest]
(
	[RecordID]       Int           NOT NULL,
	[EffectiveStart] DateTime      NOT NULL,
	[EffectiveEnd]   DateTime          NULL,
	[Key]            Int           NOT NULL,
	[Name]           NVarChar(255)     NULL,
	[Code]           NVarChar(255)     NULL,
	[Audit1ID]       Int           NOT NULL,
	[Audit2ID]       Int           NOT NULL,

	CONSTRAINT [PK_ColumnOrderTest] PRIMARY KEY CLUSTERED ([RecordID])
)

BeforeExecute
BeginTransaction
BeforeExecute
RollbackTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [ColumnOrderTest]

