﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[t1].[ParentID],
	[t1].[c1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (@take)
				[c_1].[ParentID] + 1 as [c1],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		) [t1]

