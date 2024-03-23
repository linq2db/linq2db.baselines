BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[_].[ChildID],
	AVG([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

