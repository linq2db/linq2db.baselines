-- SqlCe

SELECT
	[t2].[Assignee]
FROM
	(
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
						[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
				) [t1]
	) [t2]
ORDER BY
	[t2].[Assignee]

