﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Child] [t1]
		GROUP BY
			[t1].[ParentID]
	) [g_1]
		INNER JOIN [Child] [ch] ON [g_1].[ParentID] = [ch].[ParentID]

