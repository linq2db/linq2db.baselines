﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[i].[ParentID],
	[i].[Value1]
FROM
	[Child] [t]
		LEFT JOIN [Parent] [i] ON [t].[ParentID] = [i].[ParentID]

