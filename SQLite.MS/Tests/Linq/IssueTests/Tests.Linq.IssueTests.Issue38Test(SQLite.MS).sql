-- SQLite.MS SQLite

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[GrandChild] [a_GrandChildren1]
		WHERE
			[a].[ParentID] = [a_GrandChildren1].[ParentID] AND
			[a].[ChildID] = [a_GrandChildren1].[ChildID]
	)
FROM
	[Child] [a]

