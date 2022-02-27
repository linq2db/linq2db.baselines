BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [t1] ON 1=1
WHERE
	[p].[ParentID] = [t1].[ParentID]

