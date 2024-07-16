BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Request]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Request]
(
	[Id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Metric]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Metric]
(
	[Id]        INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[RequestId] INTEGER  NOT NULL,
	[Value]     Float        NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[not_null],
	[t1].[Value_1]
FROM
	[Request] [a]
		LEFT JOIN (
			SELECT
				[a_Metrics].[Value] as [Value_1],
				1 as [not_null],
				ROW_NUMBER() OVER (PARTITION BY [a_Metrics].[RequestId] ORDER BY [a_Metrics].[RequestId]) as [rn],
				[a_Metrics].[RequestId]
			FROM
				[Metric] [a_Metrics]
		) [t1] ON [a].[Id] = [t1].[RequestId] AND [t1].[rn] <= 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Metric]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Request]

