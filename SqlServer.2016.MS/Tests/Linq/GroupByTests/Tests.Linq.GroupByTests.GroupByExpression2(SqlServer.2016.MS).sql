BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[_].[ChildID],
	AVG([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

