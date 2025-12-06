-- SqlServer.2008

SELECT
	[pmp].[ParentID]
FROM
	[Child] [pmp]
GROUP BY
	[pmp].[ParentID]

-- SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

