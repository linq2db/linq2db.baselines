﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		LEFT LOOP JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

