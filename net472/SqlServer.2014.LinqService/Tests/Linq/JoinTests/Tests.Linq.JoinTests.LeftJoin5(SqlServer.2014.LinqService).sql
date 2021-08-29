BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1],
	[lj1].[ParentID],
	[lj1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [lj1] ON [p].[ParentID] = [lj1].[ParentID]
WHERE
	([lj1].[ParentID] IS NULL AND [lj1].[ChildID] IS NULL)

