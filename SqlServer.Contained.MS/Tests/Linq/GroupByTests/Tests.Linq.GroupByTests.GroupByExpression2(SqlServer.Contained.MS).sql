BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[_].[ChildID],
	Avg([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

