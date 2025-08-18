﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2017

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
					[STRING_SPLIT]([a].[ArrayString], N',') [i]
				WHERE
					[i].[value] = N'two'
			)
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], N',') [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2017

SELECT
	[a].[Id],
	[a].[ArrayString]
FROM
	[Issue3807Table] [a]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[STRING_SPLIT]([a].[ArrayString], N',') [i]
		WHERE
			[i].[value] = N'two'
	)
ORDER BY
	[a].[Id]

