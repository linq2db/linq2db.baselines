﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
WHERE
	([p].[ParentID] < 4 OR [p].[ParentID] >= 4)

