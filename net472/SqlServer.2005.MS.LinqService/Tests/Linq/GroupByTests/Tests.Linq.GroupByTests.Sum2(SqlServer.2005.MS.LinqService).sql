BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Sum([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

