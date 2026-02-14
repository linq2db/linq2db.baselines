-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			SUM([a_Children].[ChildID]) as [Sum_1]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 1
	)
FROM
	[Parent] [p]

