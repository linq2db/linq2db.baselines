﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ParentID]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]
HAVING
	[t1].[ParentID] > 2

