﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Sum([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

