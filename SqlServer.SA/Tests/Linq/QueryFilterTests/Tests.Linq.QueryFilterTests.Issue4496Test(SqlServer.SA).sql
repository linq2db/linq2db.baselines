﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT DISTINCT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		INNER JOIN [Parent] [u] ON [x].[ParentID] = [u].[ParentID] AND [u].[Value1] > 5 AND [u].[Value1] IS NOT NULL
WHERE
	[x].[ChildID] > 30

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT DISTINCT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
		INNER JOIN [Parent] [u] ON [x].[ParentID] = [u].[ParentID] AND [u].[Value1] > 5 AND [u].[Value1] IS NOT NULL
WHERE
	[x].[ChildID] > 30

