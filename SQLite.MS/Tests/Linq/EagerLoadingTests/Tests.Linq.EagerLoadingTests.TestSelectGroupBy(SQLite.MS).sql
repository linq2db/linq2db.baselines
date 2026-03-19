-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_1].[MasterId],
	[t4].[Id1],
	[t4].[Id2],
	[t4].[Value_1],
	[t4].[ByteValues]
FROM
	(
		SELECT DISTINCT
			[dd].[MasterId]
		FROM
			(
				SELECT
					[t1].[Id1]
				FROM
					[MasterClass] [t1]
				ORDER BY
					[t1].[Id2] DESC
				LIMIT @take
			) [t2]
				INNER JOIN [DetailClass] [dd] ON [t2].[Id1] = [dd].[MasterId]
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				[t3].[Id1] as [Key_1]
			FROM
				[MasterClass] [t3]
		) [d] ON [d].[Key_1] = [m_1].[MasterId]
		INNER JOIN (
			SELECT
				[mm].[Id1],
				[mm].[Id2],
				[mm].[Value] as [Value_1],
				[mm].[ByteValues],
				ROW_NUMBER() OVER (PARTITION BY [mm].[Id1] ORDER BY [mm].[Id1]) as [rn]
			FROM
				[MasterClass] [mm]
		) [t4] ON [t4].[Id1] = [m_1].[MasterId] AND [d].[Key_1] = [t4].[Id1] AND [t4].[rn] = 1

-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[t2].[Id1],
	[t2].[Id2],
	[t2].[Value_1],
	[t2].[ByteValues],
	[dd].[DetailId],
	[dd].[MasterId],
	[dd].[DetailValue]
FROM
	(
		SELECT
			[t1].[Id1],
			[t1].[Id2],
			[t1].[Value] as [Value_1],
			[t1].[ByteValues]
		FROM
			[MasterClass] [t1]
		ORDER BY
			[t1].[Id2] DESC
		LIMIT @take
	) [t2]
		INNER JOIN [DetailClass] [dd] ON [t2].[Id1] = [dd].[MasterId]

