﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p_2].[Key_1]
FROM
	(
		SELECT
			[p_1].[Key_1]
		FROM
			(
				SELECT
					[p].[ParentID] as [Key_1]
				FROM
					[Child] [p]
				GROUP BY
					[p].[ParentID]
			) [p_1]
		GROUP BY
			[p_1].[Key_1],
			[p_1].[Key_1]
	) [p_2]
GROUP BY
	[p_2].[Key_1]

