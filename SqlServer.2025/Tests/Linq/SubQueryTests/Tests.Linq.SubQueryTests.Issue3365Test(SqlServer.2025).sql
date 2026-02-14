-- SqlServer.2025

SELECT
	[t1].[Assignee]
FROM
	(
		SELECT
			(
				SELECT TOP (1)
					[a_GrandChildren].[ParentID] as [Assignee]
				FROM
					[GrandChild] [a_GrandChildren]
				WHERE
					[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
			) as [Assignee]
		FROM
			[Child] [x]
	) [t1]
ORDER BY
	[t1].[Assignee]

