BeforeExecute
-- SqlServer.2012

SELECT
	[_].[ChildID],
	AVG([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

