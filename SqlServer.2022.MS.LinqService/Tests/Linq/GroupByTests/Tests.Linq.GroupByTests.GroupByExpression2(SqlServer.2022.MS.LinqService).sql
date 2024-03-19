BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[_].[ChildID],
	AVG([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

