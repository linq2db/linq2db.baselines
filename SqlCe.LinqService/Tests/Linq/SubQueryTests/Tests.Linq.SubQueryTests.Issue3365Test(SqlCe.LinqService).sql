BeforeExecute
-- SqlCe

SELECT
	[t1].[ParentID] as [Assignee]
FROM
	[Child] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_GrandChildren].[ParentID]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
		) [t1]
ORDER BY
	[t1].[ParentID]

