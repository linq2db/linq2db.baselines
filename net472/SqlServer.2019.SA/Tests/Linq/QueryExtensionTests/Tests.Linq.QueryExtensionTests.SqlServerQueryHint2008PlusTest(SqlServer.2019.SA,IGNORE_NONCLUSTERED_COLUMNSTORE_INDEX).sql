﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON [c_1].[ParentID] = [p].[ParentID]
OPTION (IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX)

