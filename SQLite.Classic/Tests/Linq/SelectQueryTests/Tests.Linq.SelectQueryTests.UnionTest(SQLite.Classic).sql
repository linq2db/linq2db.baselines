﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,[t].[Value] || ' Day'),
	strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,2 || ' Day')
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = 1
UNION
SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,3 || ' Day') as [Value1],
			strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,4 || ' Day') as [Value2]
	) [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[v].[Value2]
FROM
	(
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,[t].[Value] || ' Day') as [Value1],
			strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,2 || ' Day') as [Value2]
		FROM
			[SampleClass] [t]
		WHERE
			[t].[Value] = 1
		UNION
		SELECT
			[t1].[Value1],
			[t1].[Value2]
		FROM
			(
				SELECT
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,3 || ' Day') as [Value1],
					strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP,4 || ' Day') as [Value2]
			) [t1]
	) [v]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]

