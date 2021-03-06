﻿BeforeExecute
-- SqlServer.2008

SELECT
	[p].[ParentID],
	[t1].[Count_1],
	[t1].[Sum_1]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				Count(*) as [Count_1],
				Sum([c_1].[ChildID]) as [Sum_1]
			FROM
				(
					SELECT
						1 as [Key_1],
						[t].[ChildID]
					FROM
						[Child] [t]
					WHERE
						[t].[ParentID] = [p].[ParentID]
				) [c_1]
			GROUP BY
				[c_1].[Key_1]
		) [t1]

BeforeExecute
-- SqlServer.2008

SELECT
	Count(*)
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				Count(*) as [c1]
			FROM
				(
					SELECT
						1 as [Key_1],
						[t].[ChildID]
					FROM
						[Child] [t]
					WHERE
						[t].[ParentID] = [p].[ParentID]
				) [c_1]
			GROUP BY
				[c_1].[Key_1]
		) [t1]

