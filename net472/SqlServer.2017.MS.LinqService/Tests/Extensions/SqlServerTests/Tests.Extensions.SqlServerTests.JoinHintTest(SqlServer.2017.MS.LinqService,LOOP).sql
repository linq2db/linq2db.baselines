﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER LOOP JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]

