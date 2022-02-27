BeforeExecute
-- SqlServer.2012

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON ([c_1].[ParentID] IS NULL AND [p].[ParentID] IS NULL OR [c_1].[ParentID] = [p].[ParentID])

