BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ChildID],
	Avg([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

