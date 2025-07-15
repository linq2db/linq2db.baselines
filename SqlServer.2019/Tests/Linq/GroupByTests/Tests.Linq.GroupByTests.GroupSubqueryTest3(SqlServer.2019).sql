BeforeExecute
-- SqlServer.2019

SELECT
	[pmp].[ParentID]
FROM
	[Child] [pmp]
GROUP BY
	[pmp].[ParentID]

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

