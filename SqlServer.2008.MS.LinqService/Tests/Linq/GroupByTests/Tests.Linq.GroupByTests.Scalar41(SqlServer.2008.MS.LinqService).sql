BeforeExecute
-- SqlServer.2008.MS SqlServer.2008 (asynchronously)

SELECT
	[g_2].[MIN_1]
FROM
	(
		SELECT
			MIN(CASE
				WHEN [g_1].[ParentID] > 2 THEN [g_1].[ChildID]
				ELSE NULL
			END) as [cond],
			MIN(CASE
				WHEN [g_1].[ParentID] > 2 THEN [g_1].[ChildID]
				ELSE NULL
			END) as [MIN_1]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
WHERE
	[g_2].[cond] IS NOT NULL

