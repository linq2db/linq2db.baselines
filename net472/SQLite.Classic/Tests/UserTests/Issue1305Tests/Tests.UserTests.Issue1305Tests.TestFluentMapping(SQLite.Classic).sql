BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [FluentMapping]
(
	[RecordID]       INTEGER   NOT NULL,
	[EffectiveStart] DateTime2 NOT NULL,
	[EffectiveEnd]   DateTime2     NULL,
	[Key]            INTEGER   NOT NULL,
	[Unordered1]     INTEGER   NOT NULL,
	[Unordered2]     INTEGER   NOT NULL,
	[Audit1ID]       INTEGER   NOT NULL,
	[Audit2ID]       INTEGER   NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [FluentMapping]

