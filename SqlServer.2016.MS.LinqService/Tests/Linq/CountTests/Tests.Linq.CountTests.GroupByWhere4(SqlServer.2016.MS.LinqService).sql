﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[a_Parent].[ParentID]
FROM
	[GrandChild] [t1]
		INNER JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
GROUP BY
	[a_Parent].[ParentID]
HAVING
	Count(*) > 2

