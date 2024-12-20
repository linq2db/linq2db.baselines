﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[q].[ParentID],
	[c_2].[Count_1],
	[c_2].[Sum_1]
FROM
	[Parent] [q]
		CROSS APPLY (
			SELECT
				COUNT(*) as [Count_1],
				SUM([c_1].[ChildID]) as [Sum_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [q].[ParentID]
		) [c_2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[Parent] [t1]
		CROSS APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [t1].[ParentID]
		) [c_2]

