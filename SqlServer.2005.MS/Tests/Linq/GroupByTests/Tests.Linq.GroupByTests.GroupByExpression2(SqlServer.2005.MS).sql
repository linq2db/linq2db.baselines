BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[_].[ChildID],
	AVG([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

