﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t]
WHERE
	[t].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP (2)
					[x].[ParentID]
				FROM
					[Child] [x]
				GROUP BY
					[x].[ParentID]
				ORDER BY
					MAX([x].[ChildID]) DESC
			) [t1]
	)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

