﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	MAX([t1].[COUNT_1])
FROM
	[Parent] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
			WHERE
				[t2].[ParentID] = [a_Children].[ParentID]
		) [t1]

