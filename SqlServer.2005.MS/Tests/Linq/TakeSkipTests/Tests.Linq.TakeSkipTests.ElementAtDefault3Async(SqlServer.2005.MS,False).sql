﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			[p].[ParentID],
			[p].[Value1],
			ROW_NUMBER() OVER (ORDER BY [p].[ParentID]) as [RN]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 1
	) [t1]
WHERE
	[t1].[RN] > @n AND [t1].[RN] <= (@n + 1)
ORDER BY
	[t1].[ParentID]

