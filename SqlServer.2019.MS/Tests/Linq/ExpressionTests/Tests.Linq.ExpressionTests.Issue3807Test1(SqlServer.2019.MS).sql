BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  SqlServer.2019.MS SqlServer.2019
DECLARE @p NChar(1) -- StringFixedLength
SET     @p = N','

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
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], @p) [d]

BeforeExecute
DisposeTransaction
BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	[a].[Id],
	[a].[ArrayString]
FROM
	[Issue3807Table] [a]
ORDER BY
	[a].[Id]

