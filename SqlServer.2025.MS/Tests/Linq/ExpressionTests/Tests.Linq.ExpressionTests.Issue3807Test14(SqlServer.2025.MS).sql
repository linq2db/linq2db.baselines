﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
			EXISTS(
				SELECT
					*
				FROM
					[STRING_SPLIT]([r].[ArrayString], N',') [i]
				WHERE
					[i].[value] = N'two'
			)
	) [m_1]
		CROSS APPLY [STRING_SPLIT]([m_1].[ArrayString], N',') [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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
			[STRING_SPLIT]([r].[ArrayString], N',') [i]
		WHERE
			[i].[value] = N'two'
	)
ORDER BY
	[r].[Id]

