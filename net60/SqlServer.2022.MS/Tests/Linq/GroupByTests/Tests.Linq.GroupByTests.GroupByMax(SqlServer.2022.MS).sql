BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Max([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

