﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
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
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[STRING_SPLIT]([a].[ArrayString], @p) [i]
				WHERE
					[i].[value] = N'two'
			)
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], @p) [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p NChar(1) -- StringFixedLength
SET     @p = N','

SELECT
	[r].[Id],
	[r].[ArrayString]
FROM
	[Issue3807Table] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[STRING_SPLIT]([r].[ArrayString], @p) [i]
		WHERE
			[i].[value] = N'two'
	)
ORDER BY
	[r].[Id]

