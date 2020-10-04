BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [ColumnOrderTest]
(
	[RecordID]       Int           NOT NULL,
	[EffectiveStart] DateTime      NOT NULL,
	[EffectiveEnd]   DateTime          NULL,
	[Key]            Int           NOT NULL,
	[Code]           NVarChar(255)     NULL,
	[Name]           NVarChar(255)     NULL,
	[Audit1ID]       Int           NOT NULL,
	[Audit2ID]       Int           NOT NULL,

	CONSTRAINT [PK_ColumnOrderTest] PRIMARY KEY CLUSTERED ([RecordID])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ColumnOrderTest]

