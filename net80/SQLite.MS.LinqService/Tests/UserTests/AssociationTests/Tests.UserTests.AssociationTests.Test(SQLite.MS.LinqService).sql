﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DisTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DisTable]
(
	[DisTypeID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [JurTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [JurTable]
(
	[JurCode] NVarChar(2) NOT NULL,

	CONSTRAINT [PK_JurTable] PRIMARY KEY ([JurCode])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DisTypeTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DisTypeTable]
(
	[DisTypeID] INTEGER      NOT NULL,
	[JurCode]   NVarChar(50) NOT NULL,

	CONSTRAINT [PK_DisTypeTable] PRIMARY KEY ([DisTypeID])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[d].[DisTypeID]
FROM
	[DisTable] [d]
		INNER JOIN [DisTypeTable] [a_DisType] ON CASE
			WHEN [d].[DisTypeID] = 1 THEN 1
			WHEN [d].[DisTypeID] = 2 THEN 2
			WHEN [d].[DisTypeID] = 4 THEN 4
			WHEN [d].[DisTypeID] = 5 THEN 5
		END = [a_DisType].[DisTypeID]
		INNER JOIN [JurTable] [j] ON [a_DisType].[JurCode] = [j].[JurCode]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DisTypeTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [JurTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DisTable]

