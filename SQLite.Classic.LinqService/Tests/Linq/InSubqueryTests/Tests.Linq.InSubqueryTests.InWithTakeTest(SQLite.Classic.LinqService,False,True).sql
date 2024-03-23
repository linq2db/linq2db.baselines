BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[v].[ParentID]
				FROM
					[Parent] [v]
				LIMIT 100
			) [t1]
	)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

