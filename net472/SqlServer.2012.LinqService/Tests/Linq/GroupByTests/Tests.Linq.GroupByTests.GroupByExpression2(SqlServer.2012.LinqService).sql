BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[ChildID],
	Avg([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

