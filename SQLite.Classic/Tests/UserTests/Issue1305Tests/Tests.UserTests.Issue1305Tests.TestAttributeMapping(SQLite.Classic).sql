BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ColumnOrderTest]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ColumnOrderTest]
(
	[RecordID]       INTEGER       NOT NULL,
	[EffectiveStart] DateTime2     NOT NULL,
	[EffectiveEnd]   DateTime2         NULL,
	[Key]            INTEGER       NOT NULL,
	[Name]           NVarChar(255)     NULL,
	[Code]           NVarChar(255)     NULL,
	[Audit1ID]       INTEGER       NOT NULL,
	[Audit2ID]       INTEGER       NOT NULL,

	CONSTRAINT [PK_ColumnOrderTest] PRIMARY KEY ([RecordID])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ColumnOrderTest]

