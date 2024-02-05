BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [o] ON [ch].[ParentID] = [o].[ParentID] AND [ch].[ChildID] = 1

