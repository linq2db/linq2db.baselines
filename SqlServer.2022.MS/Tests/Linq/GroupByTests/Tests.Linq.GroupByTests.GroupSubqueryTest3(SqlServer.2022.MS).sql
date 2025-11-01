-- SqlServer.2022.MS SqlServer.2022

SELECT
	[pmp].[ParentID]
FROM
	[Child] [pmp]
GROUP BY
	[pmp].[ParentID]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

