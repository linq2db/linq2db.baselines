﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Max([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

