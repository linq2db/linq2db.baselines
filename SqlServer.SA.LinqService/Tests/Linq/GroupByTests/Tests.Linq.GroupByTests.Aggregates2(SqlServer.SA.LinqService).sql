BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	SUM([g_1].[ChildID]),
	MIN([g_1].[ChildID]),
	MAX([g_1].[ChildID]),
	AVG([g_1].[ChildID]),
	COUNT(*)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

