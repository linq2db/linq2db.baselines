﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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

