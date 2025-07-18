﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[p].[ParentID]
				FROM
					[Parent] [p]
				ORDER BY
					1
				OFFSET 1 ROWS FETCH NEXT 100 ROWS ONLY 
			) [t1]
	)

