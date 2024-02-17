BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[_].[ChildID],
	Avg([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

