BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Assignee]
FROM
	(
		SELECT
			(
				SELECT TOP (1)
					[a_GrandChildren].[ParentID]
				FROM
					[GrandChild] [a_GrandChildren]
				WHERE
					[x].[ParentID] = [a_GrandChildren].[ParentID] AND
					[a_GrandChildren].[ParentID] IS NOT NULL AND
					[x].[ChildID] = [a_GrandChildren].[ChildID] AND
					[a_GrandChildren].[ChildID] IS NOT NULL
			) as [Assignee]
		FROM
			[Child] [x]
	) [t1]
ORDER BY
	[t1].[Assignee]

