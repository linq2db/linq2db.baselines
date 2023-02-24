﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Avg([c_1].[ChildID]),
	AVG([c_1].[ChildID]),
	AVG(ALL [c_1].[ChildID]),
	AVG(DISTINCT [c_1].[ChildID])
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
GROUP BY
	[p].[ParentID]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	Avg([c_1].[ParentID])
FROM
	[Child] [c_1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	AVG(ALL [t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	AVG(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

