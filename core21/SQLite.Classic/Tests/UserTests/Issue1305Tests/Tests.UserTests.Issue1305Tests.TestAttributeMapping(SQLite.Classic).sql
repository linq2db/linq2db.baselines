BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [ColumnOrderTest]
(
	[RecordID]       INTEGER       NOT NULL,
	[EffectiveStart] DateTime2     NOT NULL,
	[EffectiveEnd]   DateTime2         NULL,
	[Key]            INTEGER       NOT NULL,
	[Code]           NVarChar(255)     NULL,
	[Name]           NVarChar(255)     NULL,
	[Audit1ID]       INTEGER       NOT NULL,
	[Audit2ID]       INTEGER       NOT NULL,

	CONSTRAINT [PK_ColumnOrderTest] PRIMARY KEY ([RecordID])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [ColumnOrderTest]

