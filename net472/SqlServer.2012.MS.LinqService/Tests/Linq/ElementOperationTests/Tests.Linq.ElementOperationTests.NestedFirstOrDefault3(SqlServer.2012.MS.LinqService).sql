﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT DISTINCT TOP (1)
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
		) [t1]

