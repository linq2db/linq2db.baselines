﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[a_Parent].[Value1]
FROM
	[Parent] [x]
		LEFT JOIN [Parent] [a_Parent] ON [x].[ParentID] = [a_Parent].[Value1]
WHERE
	[x].[Value1] IS NULL

