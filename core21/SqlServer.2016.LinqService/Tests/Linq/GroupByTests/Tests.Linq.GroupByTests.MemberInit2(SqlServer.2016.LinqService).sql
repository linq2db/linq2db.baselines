﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

