﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [FluentMapping]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [FluentMapping]
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [FluentMapping]

