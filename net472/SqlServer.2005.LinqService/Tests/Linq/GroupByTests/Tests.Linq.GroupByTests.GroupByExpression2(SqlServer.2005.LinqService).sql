BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ChildID],
	Avg([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

