-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_1].[DetailId],
	[d].[SubDetailId],
	[d].[DetailId],
	[d].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[dd].[DetailId]
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
		INNER JOIN [SubDetailClass] [d] ON [m_1].[DetailId] = [d].[DetailId]

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_1].[DetailId],
	[d_1].[SubDetailId],
	[d_1].[DetailId],
	[d_1].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[dd].[DetailId]
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
			SELECT
				[d].[SubDetailId],
				[d].[DetailId],
				[d].[SubDetailValue],
				ROW_NUMBER() OVER (PARTITION BY [d].[DetailId] ORDER BY [d].[SubDetailValue]) as [rn]
			FROM
				[SubDetailClass] [d]
		) [d_1] ON [m_1].[DetailId] = [d_1].[DetailId] AND [d_1].[rn] <= 10
ORDER BY
	[d_1].[SubDetailValue]

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_1].[MasterId],
	[d_1].[Id1],
	[d_1].[Id2],
	[d_1].[Value_1],
	[d_1].[ByteValues]
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
			SELECT
				[d].[Id1],
				[d].[Id2],
				[d].[Value] as [Value_1],
				[d].[ByteValues],
				ROW_NUMBER() OVER (PARTITION BY [d].[Id1] ORDER BY [d].[Value]) as [rn]
			FROM
				[MasterClass] [d]
		) [d_1] ON [d_1].[Id1] = [m_1].[MasterId] AND [d_1].[rn] <= 10
ORDER BY
	[d_1].[Value_1]

-- SQLite.Classic SQLite
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

