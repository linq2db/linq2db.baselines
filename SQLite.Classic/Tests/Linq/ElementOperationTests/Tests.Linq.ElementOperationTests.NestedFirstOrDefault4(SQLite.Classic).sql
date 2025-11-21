-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT DISTINCT
					[a_Children].[ChildID],
					[a_Children].[ParentID]
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] > 0
			) [t1]
		ORDER BY
			[t1].[ChildID]
		LIMIT 1
	),
	(
		SELECT
			[t2].[ChildID]
		FROM
			(
				SELECT DISTINCT
					[a_Children_1].[ChildID],
					[a_Children_1].[ParentID]
				FROM
					[Child] [a_Children_1]
				WHERE
					[p].[ParentID] = [a_Children_1].[ParentID] AND [a_Children_1].[ParentID] > 0
			) [t2]
		ORDER BY
			[t2].[ChildID]
		LIMIT 1
	)
FROM
	[Parent] [p]

