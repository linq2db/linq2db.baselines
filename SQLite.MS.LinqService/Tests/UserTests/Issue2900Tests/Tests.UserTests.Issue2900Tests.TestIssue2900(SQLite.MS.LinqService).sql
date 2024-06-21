﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Request]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Request]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Metric]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Metric]
(
	[Id]        INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[RequestId] INTEGER  NOT NULL,
	[Value]     Float        NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[not_null],
	[t1].[HasValue]
FROM
	[Request] [a]
		LEFT JOIN (
			SELECT
				[a_Metrics].[Value] as [HasValue],
				1 as [not_null],
				ROW_NUMBER() OVER (PARTITION BY [a_Metrics].[RequestId] ORDER BY [a_Metrics].[RequestId]) as [rn],
				[a_Metrics].[RequestId]
			FROM
				[Metric] [a_Metrics]
		) [t1] ON [a].[Id] = [t1].[RequestId] AND [t1].[rn] <= 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Metric]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Request]

