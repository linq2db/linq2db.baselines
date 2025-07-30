BeforeExecute
BeginTransactionAsync(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @intParam  -- Int32
SET     @intParam = 0

SELECT
	[m_2].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
		WHERE
			[m_1].[Id1] >= @intParam
	) [m_2]
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @intParam  -- Int32
SET     @intParam = 0

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	[MasterClass] [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1] AND [d].[MasterId] = [m_1].[Id2]
WHERE
	[m_1].[Id1] >= @intParam AND [d].[DetailId] % 2 = 0

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @intParam  -- Int32
SET     @intParam = 0

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[m_1].[Value],
	[m_1].[ByteValues]
FROM
	[MasterClass] [m_1]
WHERE
	[m_1].[Id1] >= @intParam

BeforeExecute
DisposeTransactionAsync
