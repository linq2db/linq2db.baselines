BeforeExecute
-- SqlServer.2025 SqlServer.2022

DELETE [p]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
WHERE
	[ch].[ParentID] IS NOT NULL AND [ch].[ParentID] = -1 OR
	[ch].[ParentID] IS NULL AND [p].[ParentID] = -1

