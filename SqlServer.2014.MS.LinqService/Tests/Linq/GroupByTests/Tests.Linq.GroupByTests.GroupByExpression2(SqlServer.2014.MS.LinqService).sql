BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[_].[ChildID],
	Avg([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

