﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Max([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

