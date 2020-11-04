BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t2].[Value1],
	[t2].[Value2]
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
	) [t2]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

