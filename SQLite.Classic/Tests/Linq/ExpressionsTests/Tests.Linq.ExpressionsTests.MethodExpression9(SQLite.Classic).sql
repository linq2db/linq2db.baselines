BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [p].[ParentID] = Cast(Floor(Cast([ch].[ChildID] as Float) / 10) as INTEGER)
WHERE
	[ch].[ParentID] = [p].[ParentID]

