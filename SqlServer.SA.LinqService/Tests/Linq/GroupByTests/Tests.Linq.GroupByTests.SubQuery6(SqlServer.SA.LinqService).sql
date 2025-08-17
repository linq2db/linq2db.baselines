BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[g_2].[ParentID]
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[ParentID]

