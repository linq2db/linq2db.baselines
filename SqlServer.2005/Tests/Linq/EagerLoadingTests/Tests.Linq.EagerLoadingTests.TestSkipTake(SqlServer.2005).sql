BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005

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
	) [m_2]
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]

BeforeExecute
-- SqlServer.2005
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	[m_2].[Id1],
	[d_1].[DetailId],
	[d_1].[MasterId],
	[d_1].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
	) [m_2]
		CROSS APPLY (
			SELECT
				[t1].[DetailId],
				[t1].[MasterId],
				[t1].[DetailValue]
			FROM
				(
					SELECT
						[d].[DetailId],
						[d].[MasterId],
						[d].[DetailValue],
						ROW_NUMBER() OVER (ORDER BY [d].[DetailId]) as [RN]
					FROM
						[DetailClass] [d]
					WHERE
						[m_2].[Id1] = [d].[MasterId]
				) [t1]
			WHERE
				[t1].[RN] > @p AND [t1].[RN] <= (@p + @p_1)
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[m_1].[Value],
	[m_1].[ByteValues]
FROM
	[MasterClass] [m_1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1]
		FROM
			[MasterClass] [t1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]

