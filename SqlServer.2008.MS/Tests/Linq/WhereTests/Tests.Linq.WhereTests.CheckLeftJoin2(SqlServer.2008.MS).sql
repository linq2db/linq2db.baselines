-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
WHERE
	[ch].[ParentID] IS NOT NULL

