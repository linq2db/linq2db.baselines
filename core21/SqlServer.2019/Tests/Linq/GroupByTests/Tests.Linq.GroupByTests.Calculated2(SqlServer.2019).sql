﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[ch].[c1] + N'2' as [c1]
		FROM
			(
				SELECT
					IIF([selectParam].[ParentID] > 2, IIF([selectParam].[ParentID] > 3, N'1', N'2'), N'3') as [c1]
				FROM
					[Child] [selectParam]
			) [ch]
		GROUP BY
			[ch].[c1]
	) [p]
WHERE
	[p].[c1] = N'22'

