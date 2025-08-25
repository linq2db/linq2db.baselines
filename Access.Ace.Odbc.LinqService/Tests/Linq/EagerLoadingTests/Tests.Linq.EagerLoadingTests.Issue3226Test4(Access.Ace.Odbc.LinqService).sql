﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT
					[x].[Id]
				FROM
					[Item] [x]
			) [t1]
	) [m_1]
		INNER JOIN [ItemValue] [d] ON ([m_1].[Id] = [d].[ItemId])

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[x_1].[Id],
	[x_1].[Text]
FROM
	(
		SELECT
			[x].[Id],
			[x].[Text],
			(
				SELECT
					SUM([a_Values].[Value])
				FROM
					[ItemValue] [a_Values]
				WHERE
					[x].[Id] = [a_Values].[ItemId]
			) as [SUM_1]
		FROM
			[Item] [x]
	) [x_1]
ORDER BY
	IIF([x_1].[SUM_1] IS NULL, 0, [x_1].[SUM_1])

