BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ChildID]
	) [t2]
UNION ALL
SELECT
	[t3].[ParentID],
	[t3].[ChildID]
FROM
	[Child] [t3]
ORDER BY
	[t3].[ChildID] DESC

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
UNION ALL
SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Child] [t2]
ORDER BY
	[t2].[ChildID] DESC

