﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t2].[Count_1] + [t2].[Count_1]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[Child] [c_1]
				WHERE
					[t1].[ParentID] = [c_1].[ParentID]
			) as [Count_1]
		FROM
			[Parent] [t1]
	) [t2]

