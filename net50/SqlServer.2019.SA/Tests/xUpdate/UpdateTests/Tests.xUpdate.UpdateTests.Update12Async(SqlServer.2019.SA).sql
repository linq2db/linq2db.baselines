﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017 (asynchronously)

UPDATE
	[p1]
SET
	[p1].[ParentID] = [p2].[ParentID]
FROM
	[Parent] [p1]
		INNER JOIN [Parent] [p2] ON [p1].[ParentID] = [p2].[ParentID]
WHERE
	[p1].[ParentID] < 3

