BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	(
		SELECT
			Max([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] < 3 AND [ch].[ParentID] < 3 AND [g_2].[ParentID] = [ch].[ParentID]
	)
FROM
	(
		SELECT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] < 3
		GROUP BY
			[g_1].[ParentID]
	) [g_2]

