﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT TOP (2)
	IIF(COUNT([t1].[ParentID]) = COUNT([right_1].[ParentID]) AND COUNT([t1].[ParentID]) = COUNT(*), 1, 0)
FROM
	[Parent] [t1]
		FULL JOIN [Parent] [right_1] ON [right_1].[ParentID] = [t1].[ParentID]

