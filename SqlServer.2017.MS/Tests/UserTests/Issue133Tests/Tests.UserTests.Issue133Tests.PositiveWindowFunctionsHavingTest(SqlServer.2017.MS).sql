﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Count(*),
	SUM(Count(*)) OVER(),
	Sum([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ParentID]
HAVING
	(Sum([_].[ParentID]) <> 36 OR Sum([_].[ParentID]) IS NULL)

