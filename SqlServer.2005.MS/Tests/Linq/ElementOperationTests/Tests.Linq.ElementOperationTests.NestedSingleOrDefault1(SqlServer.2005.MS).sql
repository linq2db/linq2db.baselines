﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT DISTINCT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
		) [t1]

