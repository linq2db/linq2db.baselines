BeforeExecute
-- SqlCe

SELECT
	[t1].[Sum_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				Sum([a_Children].[ChildID]) as [Sum_1]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Children].[ParentID] > 1 AND [a_Children].[ParentID] < 10 AND
				[t].[ParentID] = [a_Children].[ParentID]
		) [t1]

