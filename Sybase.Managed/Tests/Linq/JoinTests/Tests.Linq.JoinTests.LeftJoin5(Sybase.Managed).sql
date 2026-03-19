-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[Value1],
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [ch] ON [t1].[ParentID] = [ch].[ParentID]
WHERE
	[ch].[ParentID] IS NULL

