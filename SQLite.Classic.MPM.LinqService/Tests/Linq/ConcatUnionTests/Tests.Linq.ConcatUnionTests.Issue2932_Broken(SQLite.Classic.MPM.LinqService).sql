BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ChildID],
	EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [a_GrandChildren]
		WHERE
			[p].[ParentID] = [a_GrandChildren].[ParentID] AND [p].[ChildID] = [a_GrandChildren].[ChildID]
	)
FROM
	[Child] [p]
UNION ALL
SELECT
	[p_1].[ChildID],
	EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [a_GrandChildren_1]
		WHERE
			[p_1].[ParentID] = [a_GrandChildren_1].[ParentID] AND
			[p_1].[ChildID] = [a_GrandChildren_1].[ChildID]
	)
FROM
	[Child] [p_1]

