BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ChildCount]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				SUM([a_Children].[ParentID] * [a_Children].[ChildID]) as [ChildCount]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 2
		) [t1]

