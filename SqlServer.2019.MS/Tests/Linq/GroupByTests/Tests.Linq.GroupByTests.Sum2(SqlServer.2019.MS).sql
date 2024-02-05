BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Sum([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

