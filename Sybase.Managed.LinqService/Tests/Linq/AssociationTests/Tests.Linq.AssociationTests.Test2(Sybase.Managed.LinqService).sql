BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
WHERE
	[ch].[ParentID] < 4 OR [ch].[ParentID] >= 4

