BeforeExecute
-- SqlCe

SELECT
	[t1].[Sum_1] as [ChildCount]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Sum([a_Children].[ParentID] * [a_Children].[ChildID]) as [Sum_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 2
		) [t1]

