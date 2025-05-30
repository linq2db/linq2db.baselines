﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[m_1].[cond],
	[m_1].[cond_1],
	[d].[Id],
	[d].[FormId],
	[d].[OrderIndex],
	[d].[Name1],
	[d].[Name2],
	[d].[Name3]
FROM
	(
		SELECT TOP 1
			[t1].[Id],
			CASE
				WHEN [t1].[C1] = 'T' THEN 1
				ELSE 0
			END as [cond],
			CASE
				WHEN [t1].[C1] <> 'T' THEN 1
				ELSE 0
			END as [cond_1]
		FROM
			[Issue4596Form] [t1]
	) [m_1],
	[Issue4596Item] [d]
WHERE
	[d].[FormId] = [m_1].[Id]
ORDER BY
	CASE
		WHEN [m_1].[cond] = 1 THEN [d].[OrderIndex]
		ELSE 0
	END,
	CASE
		WHEN [m_1].[cond_1] = 1 THEN [d].[Name1]
		ELSE ''
	END,
	CASE
		WHEN [m_1].[cond_1] = 1 THEN [d].[Name2]
		ELSE ''
	END,
	CASE
		WHEN [m_1].[cond_1] = 1 THEN [d].[Name3]
		ELSE ''
	END

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[t1].[Id],
	[t1].[C1],
	CASE
		WHEN [t1].[C1] = 'T' THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[C1] <> 'T' THEN 1
		ELSE 0
	END
FROM
	[Issue4596Form] [t1]

BeforeExecute
DisposeTransaction
