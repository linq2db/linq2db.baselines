﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	(
		SELECT
			Sum([c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] <> [p].[ParentID] * 10 + 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 0

