BeforeExecute
-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 30 AND [ch].[ChildID] > 30 AND [g_1].[ParentID] = [ch].[ParentID]
	),
	(
		SELECT
			Sum([ch_1].[ChildID])
		FROM
			[Child] [ch_1]
		WHERE
			[ch_1].[ChildID] > 30 AND [ch_1].[ChildID] > 30 AND
			[g_1].[ParentID] = [ch_1].[ParentID]
	),
	(
		SELECT
			Min([ch_2].[ChildID])
		FROM
			[Child] [ch_2]
		WHERE
			[ch_2].[ChildID] > 30 AND [ch_2].[ChildID] > 30 AND
			[g_1].[ParentID] = [ch_2].[ParentID]
	),
	(
		SELECT
			Max([ch_3].[ChildID])
		FROM
			[Child] [ch_3]
		WHERE
			[ch_3].[ChildID] > 30 AND [ch_3].[ChildID] > 30 AND
			[g_1].[ParentID] = [ch_3].[ParentID]
	),
	(
		SELECT
			Avg([ch_4].[ChildID])
		FROM
			[Child] [ch_4]
		WHERE
			[ch_4].[ChildID] > 30 AND [ch_4].[ChildID] > 30 AND
			[g_1].[ParentID] = [ch_4].[ParentID]
	)
FROM
	[Child] [g_1]
WHERE
	[g_1].[ChildID] > 30
GROUP BY
	[g_1].[ParentID]

