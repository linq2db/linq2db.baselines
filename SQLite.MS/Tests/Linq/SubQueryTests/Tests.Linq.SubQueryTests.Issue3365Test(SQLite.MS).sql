BeforeExecute
-- SQLite.MS SQLite

SELECT
	(
		SELECT
			[a_GrandChildren].[ParentID]
		FROM
			[GrandChild] [a_GrandChildren]
		WHERE
			[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
		LIMIT 1
	)
FROM
	[Child] [x]
ORDER BY
	(
		SELECT
			[a_GrandChildren].[ParentID]
		FROM
			[GrandChild] [a_GrandChildren]
		WHERE
			[x].[ParentID] = [a_GrandChildren].[ParentID] AND [x].[ChildID] = [a_GrandChildren].[ChildID]
		LIMIT 1
	)

