﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t_1].[Id],
	[t_1].[Value],
	[t2].[Value1],
	[t2].[Value2]
FROM
	[SampleClass] [t_1]
		LEFT JOIN (
			SELECT
				[t1].[Value1],
				[t1].[Value2]
			FROM
				(
					SELECT
						strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, CAST([t].[Value] AS NVarChar(11)) || ' Day') as [Value1],
						strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '2 Day') as [Value2]
					FROM
						[SampleClass] [t]
					WHERE
						[t].[Value] = 1
					UNION
					SELECT
						strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '3 Day') as [Value1],
						strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP, '4 Day') as [Value2]
				) [t1]
			LIMIT 1
		) [t2] ON 1=1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

