﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE [IsTemporaryTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[IsTemporaryTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [IsTemporaryTable]

