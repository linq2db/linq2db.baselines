﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [TestTable]
(
	[Id] INTEGER NOT NULL,
	[Fd] INTEGER     NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

/* My Test */
DELETE FROM [TestTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TestTable]

