﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	[Item1].[ParentID],
	[Item1].[ChildID]
FROM
	[Child] [Item1]
		INNER JOIN [Parent] [arg2] ON [Item1].[ParentID] = [arg2].[ParentID]
WHERE
	[arg2].[Value1] = 6

