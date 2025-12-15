-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(IIF([g_1].[ChildID] < 30, 1, NULL))
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

