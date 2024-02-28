BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Sum([t1].[ChildID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

