﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = Convert(Int, Floor(Convert(Float, [ch].[ChildID]) / 10))
WHERE
	[ch].[ParentID] = [p].[ParentID]

