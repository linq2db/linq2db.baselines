BeforeExecute
-- SQLite.MS SQLite

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = CASE
			WHEN Cast([ch].[ChildID] as Float) / 10 > 0
				THEN Cast((Cast([ch].[ChildID] as Float) / 10) as INTEGER)
			ELSE Cast((Cast([ch].[ChildID] as Float) / 10 - 0.99999999999999989) as INTEGER)
		END
WHERE
	[ch].[ParentID] = [p].[ParentID]

