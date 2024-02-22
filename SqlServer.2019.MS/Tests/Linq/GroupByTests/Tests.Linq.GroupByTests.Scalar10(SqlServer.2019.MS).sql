BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] >= 20 AND [ch].[ChildID] < 30 AND [g_2].[ParentID] = [ch].[ParentID]
	)
FROM
	(
		SELECT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [g_2]

