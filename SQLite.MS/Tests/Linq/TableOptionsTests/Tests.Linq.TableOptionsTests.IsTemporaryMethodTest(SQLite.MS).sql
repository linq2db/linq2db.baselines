﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TestTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[TestTable]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value],
	[t1].[Id],
	[t1].[Value]
FROM
	temp.[TestTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TestTable]

