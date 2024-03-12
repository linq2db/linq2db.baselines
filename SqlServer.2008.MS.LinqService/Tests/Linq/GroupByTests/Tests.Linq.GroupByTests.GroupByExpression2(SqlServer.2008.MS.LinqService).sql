BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[_].[ChildID],
	Avg([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ChildID]

