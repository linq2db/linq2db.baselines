﻿BeforeExecute
-- SqlCe

SELECT
	[o].[ParentID],
	[t1].[Count_1],
	[t2].[Sum_1]
FROM
	[Parent] [o]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[o].[ParentID] = [a_Children].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				Sum([a_Children_1].[ParentID]) as [Sum_1]
			FROM
				[Child] [a_Children_1]
			WHERE
				[o].[ParentID] = [a_Children_1].[ParentID]
		) [t2]

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [Count_1]
FROM
	[Parent] [o]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[o].[ParentID] = [a_Children].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				Sum([a_Children_1].[ParentID]) as [Sum_1]
			FROM
				[Child] [a_Children_1]
			WHERE
				[o].[ParentID] = [a_Children_1].[ParentID]
		) [t2]

BeforeExecute
-- SqlCe

SELECT
	[x].[ParentID],
	[t1].[Count_1] as [CountResult],
	[t2].[Sum_1]
FROM
	[Parent] [x]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[x].[ParentID] = [a_Children].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				Sum([a_Children_1].[ParentID]) as [Sum_1]
			FROM
				[Child] [a_Children_1]
			WHERE
				[x].[ParentID] = [a_Children_1].[ParentID]
		) [t2]
WHERE
	[t1].[Count_1] > 0

