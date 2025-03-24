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
			[r].[ArrayString]
		FROM
			[Issue3807Table] [r]
		WHERE
			N'two' IN (
				SELECT
					[r_1].[value]
				FROM
					[STRING_SPLIT]([r].[ArrayString], @p) [r_1]
			)
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], @p) [d]

BeforeExecute
DisposeTransaction
BeforeExecute
--  SqlServer.2019.MS SqlServer.2019
DECLARE @p NChar(1) -- StringFixedLength
SET     @p = N','

SELECT
	[r].[Id],
	[r].[ArrayString]
FROM
	[Issue3807Table] [r]
WHERE
	N'two' IN (
		SELECT
			[r_1].[value]
		FROM
			[STRING_SPLIT]([r].[ArrayString], @p) [r_1]
	)
ORDER BY
	[r].[Id]

