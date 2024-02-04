﻿BeforeExecute
-- SqlServer.2017

SELECT
	STDEV([c_1].[ChildID]),
	STDEV(ALL [c_1].[ChildID]),
	STDEV(DISTINCT [c_1].[ChildID])
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
GROUP BY
	[p].[ParentID]

BeforeExecute
-- SqlServer.2017

SELECT
	STDEV([t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	STDEV(ALL [t1].[ParentID])
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2017

SELECT
	STDEV(DISTINCT [t1].[ParentID])
FROM
	[Child] [t1]

