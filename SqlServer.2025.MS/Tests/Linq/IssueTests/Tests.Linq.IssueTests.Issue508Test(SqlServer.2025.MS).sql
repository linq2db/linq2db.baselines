﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]
WHERE
	[c_1].[ChildID] = 11
UNION
SELECT
	[c_2].[ParentID]
FROM
	[Child] [c_2]
WHERE
	[c_2].[ChildID] = 11

