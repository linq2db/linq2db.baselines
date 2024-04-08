BeforeExecute
-- SQLite.MS SQLite

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = CASE
			WHEN CAST([ch].[ChildID] AS Float) / 10 > 0 THEN CAST(CAST([ch].[ChildID] AS Float) / 10 AS INTEGER)
			ELSE CAST(CAST([ch].[ChildID] AS Float) / 10 - 0.99999999999999989 AS INTEGER)
		END
WHERE
	[ch].[ParentID] = [p].[ParentID]

