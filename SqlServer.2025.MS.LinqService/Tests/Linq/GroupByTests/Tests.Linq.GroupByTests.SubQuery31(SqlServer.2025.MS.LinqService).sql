﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[g_2].[Key_1],
	SUM([g_2].[ParentID])
FROM
	(
		SELECT
			[g_1].[ChildID] + 1 as [Key_1],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

