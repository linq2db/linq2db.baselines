BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	Max([g_1].[ChildID]),
	Max([g_1].[ChildID] + [g_1].[ParentID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

