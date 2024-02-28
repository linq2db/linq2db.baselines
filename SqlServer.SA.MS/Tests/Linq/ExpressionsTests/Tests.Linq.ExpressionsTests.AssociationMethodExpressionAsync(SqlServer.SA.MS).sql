﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
				INNER JOIN [GrandChild] [a_GrandChildren] ON ([a_Children].[ParentID] = [a_GrandChildren].[ParentID]) AND ([a_Children].[ChildID] = [a_GrandChildren].[ChildID])
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

