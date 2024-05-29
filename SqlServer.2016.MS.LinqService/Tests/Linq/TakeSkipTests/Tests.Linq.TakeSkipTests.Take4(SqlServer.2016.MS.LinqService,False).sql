BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT TOP (3)
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] >= 0 AND [ch].[ChildID] <= 100

