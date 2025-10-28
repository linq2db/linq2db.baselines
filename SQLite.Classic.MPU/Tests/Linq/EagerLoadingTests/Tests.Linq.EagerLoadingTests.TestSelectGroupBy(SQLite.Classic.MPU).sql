BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_2].[MasterId],
	[t3].[Id1],
	[t3].[Id2],
	[t3].[Value_1],
	[t3].[ByteValues]
FROM
	(
		SELECT DISTINCT
			[dd].[MasterId]
		FROM
			(
				SELECT
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
				ORDER BY
					[m_1].[Id2] DESC
				LIMIT @take
			) [t1]
				INNER JOIN [DetailClass] [dd] ON [t1].[Id1] = [dd].[MasterId]
	) [m_2]
		INNER JOIN (
			SELECT
				[t2].[Id1]
			FROM
				[MasterClass] [t2]
			GROUP BY
				[t2].[Id1]
		) [d] ON [d].[Id1] = [m_2].[MasterId]
		INNER JOIN (
			SELECT
				[mm].[Id1],
				[mm].[Id2],
				[mm].[Value] as [Value_1],
				[mm].[ByteValues],
				ROW_NUMBER() OVER (PARTITION BY [mm].[Id1] ORDER BY [mm].[Id1]) as [rn]
			FROM
				[MasterClass] [mm]
		) [t3] ON [t3].[Id1] = [m_2].[MasterId] AND [d].[Id1] = [t3].[Id1] AND [t3].[rn] <= 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value_1],
	[t1].[ByteValues],
	[dd].[DetailId],
	[dd].[MasterId],
	[dd].[DetailValue]
FROM
	(
		SELECT
			[m_1].[Id1],
			[m_1].[Id2],
			[m_1].[Value] as [Value_1],
			[m_1].[ByteValues]
		FROM
			[MasterClass] [m_1]
		ORDER BY
			[m_1].[Id2] DESC
		LIMIT @take
	) [t1]
		INNER JOIN [DetailClass] [dd] ON [t1].[Id1] = [dd].[MasterId]

