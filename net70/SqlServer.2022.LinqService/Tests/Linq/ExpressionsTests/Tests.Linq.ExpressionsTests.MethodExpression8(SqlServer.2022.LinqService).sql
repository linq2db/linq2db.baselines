﻿BeforeExecute
-- SqlServer.2022

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = Floor(Convert(Float, [ch].[ChildID]) / 10)
WHERE
	[ch].[ParentID] = [p].[ParentID]

