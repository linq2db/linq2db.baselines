﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT
	[a_QueryableParent].[ParentID],
	[a_QueryableParent].[Value1]
FROM
	[Child] [t1]
		INNER JOIN [Parent] [a_QueryableParent] ON [t1].[ParentID] = [a_QueryableParent].[ParentID]

