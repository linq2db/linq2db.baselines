BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
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
				SELECT TOP (@take)
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
				ORDER BY
					[m_1].[Id2] DESC
			) [t1]
				INNER JOIN [DetailClass] [dd] ON [t1].[Id1] = [dd].[MasterId]
	) [m_2]
		INNER JOIN [SubDetailClass] [d] ON [m_2].[DetailId] = [d].[DetailId]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
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
				SELECT TOP (@take)
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
				ORDER BY
					[m_1].[Id2] DESC
			) [t1]
				INNER JOIN [DetailClass] [dd] ON [t1].[Id1] = [dd].[MasterId]
	) [m_2]
		CROSS APPLY (
			SELECT TOP (10)
				[d].[SubDetailId],
				[d].[DetailId],
				[d].[SubDetailValue]
			FROM
				[SubDetailClass] [d]
			WHERE
				[m_2].[DetailId] = [d].[DetailId]
			ORDER BY
				[d].[SubDetailValue]
		) [d_1]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
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
				SELECT TOP (@take)
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
				ORDER BY
					[m_1].[Id2] DESC
			) [t1]
				INNER JOIN [DetailClass] [dd] ON [t1].[Id1] = [dd].[MasterId]
	) [m_2]
		CROSS APPLY (
			SELECT TOP (10)
				[d].[Id1],
				[d].[Id2],
				[d].[Value] as [Value_1],
				[d].[ByteValues]
			FROM
				[MasterClass] [d]
			WHERE
				[d].[Id1] = [m_2].[MasterId]
			ORDER BY
				[d].[Value]
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
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
		SELECT TOP (@take)
			[m_1].[Id1],
			[m_1].[Id2],
			[m_1].[Value] as [Value_1],
			[m_1].[ByteValues]
		FROM
			[MasterClass] [m_1]
		ORDER BY
			[m_1].[Id2] DESC
	) [t1]
		INNER JOIN [DetailClass] [dd] ON [t1].[Id1] = [dd].[MasterId]

