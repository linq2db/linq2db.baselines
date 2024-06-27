﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	CASE
		WHEN [c_2].[Count_1] IS NULL THEN 0
		ELSE [c_2].[Count_1]
	END,
	CASE
		WHEN [c_2].[Count_1] IS NULL THEN 0
		ELSE [c_2].[Sum_1]
	END
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT
				COUNT(*) as [Count_1],
				SUM([c_1].[ChildID]) as [Sum_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
		) [c_2]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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

