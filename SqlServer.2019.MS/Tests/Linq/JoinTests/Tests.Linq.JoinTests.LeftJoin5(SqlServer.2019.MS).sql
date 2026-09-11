-- SqlServer.2019.MS SqlServer.2019
SELECT
	[ch].[ParentID],
	[ch].[ChildID],
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
WHERE
	[ch].[ParentID] IS NULL

