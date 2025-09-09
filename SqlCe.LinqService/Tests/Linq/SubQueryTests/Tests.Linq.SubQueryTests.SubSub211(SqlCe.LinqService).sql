BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[COUNT_1]
FROM
	[Parent] [p1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
					INNER JOIN [GrandChild] [g_1] ON [a_Children].[ParentID] = [g_1].[ParentID] AND [a_Children].[ChildID] = [g_1].[ChildID]
			WHERE
				[p1].[ParentID] = [a_Children].[ParentID] AND [g_1].[ParentID] + 1 < [p1].[ParentID] + 2
		) [t1]
WHERE
	[p1].[ParentID] > -1 AND [p1].[ParentID] > -2

