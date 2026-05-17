-- SqlServer.2022.MS SqlServer.2022

DELETE [p]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
WHERE
	[ch].[ParentID] = -1 OR [ch].[ParentID] IS NULL AND [p].[ParentID] = -1

