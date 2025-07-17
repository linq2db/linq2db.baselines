BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[ArrayString],
	[d].[value]
FROM
	(
		SELECT DISTINCT
			[a].[ArrayString]
		FROM
			[Issue3807Table] [a]
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], N',') [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[a].[Id],
	[a].[ArrayString]
FROM
	[Issue3807Table] [a]
ORDER BY
	[a].[Id]

