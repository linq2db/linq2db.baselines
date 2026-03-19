-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = CAST(Floor(CAST([t1].[ChildID] AS Float) / 10) AS INTEGER)
WHERE
	[t1].[ParentID] = [p].[ParentID]

