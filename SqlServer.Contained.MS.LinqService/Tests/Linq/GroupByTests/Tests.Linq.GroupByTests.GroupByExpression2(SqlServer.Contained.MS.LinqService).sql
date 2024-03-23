BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[_].[ChildID],
	AVG([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

