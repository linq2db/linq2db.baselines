﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[c_1].[ParentID],
	[c_1].[Value1]
FROM
	[Child] [cp]
		INNER JOIN [Parent] [c_1] ON [cp].[ParentID] = [c_1].[ParentID]

