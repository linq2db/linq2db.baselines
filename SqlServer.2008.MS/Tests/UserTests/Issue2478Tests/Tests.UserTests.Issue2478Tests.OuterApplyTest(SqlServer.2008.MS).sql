﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[t1].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [t]
			WHERE
				[t].[ParentID] = [p].[ParentID]
		) [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Count(*)
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [t]
			WHERE
				[t].[ParentID] = [p].[ParentID]
		) [t1]

