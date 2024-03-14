BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[_].[ChildID],
	Avg([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

