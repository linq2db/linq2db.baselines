BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID] AND [ch].[ParentID] > 0
WHERE
	[ch].[ParentID] IS NULL

