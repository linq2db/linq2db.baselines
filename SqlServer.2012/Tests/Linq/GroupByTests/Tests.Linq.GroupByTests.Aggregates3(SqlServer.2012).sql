BeforeExecute
-- SqlServer.2012

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 30 AND [g_1].[ParentID] = [ch].[ParentID] AND
			[ch].[ChildID] > 30
	),
	(
		SELECT
			Sum([ch_1].[ChildID])
		FROM
			[Child] [ch_1]
		WHERE
			[ch_1].[ChildID] > 30 AND [g_1].[ParentID] = [ch_1].[ParentID] AND
			[ch_1].[ChildID] > 30
	),
	(
		SELECT
			Min([ch_2].[ChildID])
		FROM
			[Child] [ch_2]
		WHERE
			[ch_2].[ChildID] > 30 AND [g_1].[ParentID] = [ch_2].[ParentID] AND
			[ch_2].[ChildID] > 30
	),
	(
		SELECT
			Max([ch_3].[ChildID])
		FROM
			[Child] [ch_3]
		WHERE
			[ch_3].[ChildID] > 30 AND [g_1].[ParentID] = [ch_3].[ParentID] AND
			[ch_3].[ChildID] > 30
	),
	(
		SELECT
			Avg([ch_4].[ChildID])
		FROM
			[Child] [ch_4]
		WHERE
			[ch_4].[ChildID] > 30 AND [g_1].[ParentID] = [ch_4].[ParentID] AND
			[ch_4].[ChildID] > 30
	)
FROM
	[Child] [g_1]
WHERE
	[g_1].[ChildID] > 30
GROUP BY
	[g_1].[ParentID]

