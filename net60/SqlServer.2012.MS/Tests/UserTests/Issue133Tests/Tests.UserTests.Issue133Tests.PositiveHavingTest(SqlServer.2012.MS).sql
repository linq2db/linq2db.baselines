﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	Sum([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ParentID]
HAVING
	(Sum([_].[ParentID]) <> 36 OR Sum([_].[ParentID]) IS NULL)

