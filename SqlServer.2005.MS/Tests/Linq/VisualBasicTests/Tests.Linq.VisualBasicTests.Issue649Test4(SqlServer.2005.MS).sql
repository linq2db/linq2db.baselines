-- SqlServer.2005.MS SqlServer.2005

SELECT
	[data_1].[ParentID],
	[data_1].[ChildID],
	MAX([data_1].[ChildID])
FROM
	[Child] [data_1]
GROUP BY
	[data_1].[ParentID],
	[data_1].[ChildID]

