-- SqlCe

SELECT
	Coalesce([t1].[Sum_1], 0) as [Sum_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				Coalesce(SUM([a_Children].[ChildID]), 0) as [Sum_1]
			FROM
				[Child] [a_Children]
			WHERE
				[t].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1 AND
				[a_Children].[ParentID] < 10
		) [t1]

