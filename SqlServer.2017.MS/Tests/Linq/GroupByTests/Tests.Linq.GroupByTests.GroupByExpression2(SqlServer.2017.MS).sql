BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[_].[ChildID],
	Avg([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

