BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_2].[DetailId],
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
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
				ORDER BY
					[m_1].[Id2] DESC
				LIMIT @take
			) [t1]
				INNER JOIN [DetailClass] [dd] ON [t1].[Id1] = [dd].[MasterId]
	) [m_2]
		INNER JOIN [SubDetailClass] [d] ON [m_2].[DetailId] = [d].[DetailId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_2].[DetailId],
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
				[d].[SubDetailId],
				[d].[DetailId],
				[d].[SubDetailValue],
				ROW_NUMBER() OVER (PARTITION BY [d].[DetailId] ORDER BY [d].[SubDetailValue]) as [rn]
			FROM
				[SubDetailClass] [d]
		) [d_1] ON [m_2].[DetailId] = [d_1].[DetailId] AND [d_1].[rn] <= 10

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_2].[MasterId],
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
				[d].[Id1],
				[d].[Id2],
				[d].[Value] as [Value_1],
				[d].[ByteValues],
				ROW_NUMBER() OVER (PARTITION BY [d].[Id1] ORDER BY [d].[Value]) as [rn]
			FROM
				[MasterClass] [d]
		) [d_1] ON [d_1].[Id1] = [m_2].[MasterId] AND [d_1].[rn] <= 10

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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

