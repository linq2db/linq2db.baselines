-- SqlCe

SELECT
	[t1].[SUM_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				SUM([a_Children].[ChildID]) as [SUM_1]
			FROM
				[Child] [a_Children]
			WHERE
				[t].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1 AND
				[a_Children].[ParentID] < 10
		) [t1]

