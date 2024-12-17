﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] IN (
				SELECT
					[gc].[ChildID]
				FROM
					[GrandChild] [gc]
			)
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

