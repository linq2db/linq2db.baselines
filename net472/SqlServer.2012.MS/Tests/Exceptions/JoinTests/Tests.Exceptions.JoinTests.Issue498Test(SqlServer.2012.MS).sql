﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON [x].[ParentID] = [y].[ParentID]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON [x].[ParentID] = [y].[ParentID]
GROUP BY
	[x].[ParentID]

