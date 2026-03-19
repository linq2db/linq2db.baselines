-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = CASE
			WHEN CAST([t1].[ChildID] AS Float) / 10 > 0 THEN CAST(CAST([t1].[ChildID] AS Float) / 10 AS INTEGER)
			ELSE CAST(CAST([t1].[ChildID] AS Float) / 10 - 0.99999999999999989 AS INTEGER)
		END
WHERE
	[t1].[ParentID] = [p].[ParentID]

