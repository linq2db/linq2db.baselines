﻿BeforeExecute
-- SqlServer.2012

SELECT TOP (1)
	[a_Parent].[Value1]
FROM
	[Parent] [x]
		INNER JOIN [Child] [c_1] ON [x].[ParentID] = [c_1].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[Value1]
WHERE
	[a_Parent].[Value1] IS NULL

