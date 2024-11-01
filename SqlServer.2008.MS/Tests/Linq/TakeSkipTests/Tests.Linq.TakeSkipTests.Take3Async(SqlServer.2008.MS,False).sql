BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT TOP (3)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] > 3 OR [ch].[ChildID] < 4

