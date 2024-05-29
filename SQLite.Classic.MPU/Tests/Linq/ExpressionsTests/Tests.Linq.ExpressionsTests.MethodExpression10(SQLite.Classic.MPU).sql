BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = CAST(Floor(CAST([ch].[ChildID] AS Float) / 10) AS INTEGER)
WHERE
	[ch].[ParentID] = [p].[ParentID]

