﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [cp]
				INNER JOIN [GrandChild] [c_1] ON [cp].[ParentID] = [c_1].[ParentID] AND [cp].[ChildID] = [c_1].[ChildID]
		WHERE
			[p].[ParentID] = [cp].[ParentID]
	)
FROM
	[Parent] [p]

