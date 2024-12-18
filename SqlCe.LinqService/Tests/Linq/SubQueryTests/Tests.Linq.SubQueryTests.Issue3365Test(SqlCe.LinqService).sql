BeforeExecute
-- SqlCe

SELECT
	[t1].[Assignee]
FROM
	[Child] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_GrandChildren].[ParentID] as [Assignee]
			FROM
				[GrandChild] [a_GrandChildren]
			WHERE
				[x].[ParentID] = [a_GrandChildren].[ParentID] AND
				[a_GrandChildren].[ParentID] IS NOT NULL AND
				[x].[ChildID] = [a_GrandChildren].[ChildID] AND
				[a_GrandChildren].[ChildID] IS NOT NULL
		) [t1]
ORDER BY
	[t1].[Assignee]

