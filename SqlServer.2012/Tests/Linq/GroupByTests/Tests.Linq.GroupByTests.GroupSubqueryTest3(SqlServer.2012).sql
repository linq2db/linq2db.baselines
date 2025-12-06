-- SqlServer.2012

SELECT
	[pmp].[ParentID]
FROM
	[Child] [pmp]
GROUP BY
	[pmp].[ParentID]

-- SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

