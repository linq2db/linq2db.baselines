﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Max([t1].[Count_1])
FROM
	[Parent] [t2]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[t2].[ParentID] = [a_Children].[ParentID]
		) [t1]

