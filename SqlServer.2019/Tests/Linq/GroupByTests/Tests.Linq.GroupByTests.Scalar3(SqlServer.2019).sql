BeforeExecute
-- SqlServer.2019

SELECT
	(
		SELECT
			Max([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 0 AND [g_2].[ParentID] = [ch].[ParentID]
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

