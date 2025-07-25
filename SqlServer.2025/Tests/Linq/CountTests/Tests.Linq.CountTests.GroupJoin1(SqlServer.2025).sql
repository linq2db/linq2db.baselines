﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	),
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [g_1]
		WHERE
			[p].[ParentID] = [g_1].[ParentID]
	)
FROM
	[Parent] [p]

