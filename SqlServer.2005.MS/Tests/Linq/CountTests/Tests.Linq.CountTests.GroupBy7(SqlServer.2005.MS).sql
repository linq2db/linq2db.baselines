﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*),
	Max([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

