BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Assignee]
FROM
	(
		SELECT
			(
				SELECT
					[a_GrandChildren].[ParentID]
				FROM
					[GrandChild] [a_GrandChildren]
				WHERE
					[x].[ParentID] = [a_GrandChildren].[ParentID] AND
					[a_GrandChildren].[ParentID] IS NOT NULL AND
					[x].[ChildID] = [a_GrandChildren].[ChildID] AND
					[a_GrandChildren].[ChildID] IS NOT NULL
				LIMIT 1
			) as [Assignee]
		FROM
			[Child] [x]
	) [t1]
ORDER BY
	[t1].[Assignee]

