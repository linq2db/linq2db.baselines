﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*),
	Max([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

