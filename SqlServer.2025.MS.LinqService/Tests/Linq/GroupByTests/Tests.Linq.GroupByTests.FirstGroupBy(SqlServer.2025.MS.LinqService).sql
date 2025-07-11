﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT
			[gr].[ParentID]
		FROM
			[Child] [gr]
		GROUP BY
			[gr].[ParentID]
	) [gr_1]
		CROSS APPLY (
			SELECT TOP (1)
				[t].[ParentID],
				[t].[ChildID]
			FROM
				[Child] [t]
			WHERE
				[gr_1].[ParentID] = [t].[ParentID]
			ORDER BY
				[t].[ChildID] DESC
		) [t1]

