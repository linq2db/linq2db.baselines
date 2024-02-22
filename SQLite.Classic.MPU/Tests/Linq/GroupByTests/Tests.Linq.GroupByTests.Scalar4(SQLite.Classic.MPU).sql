BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			Min([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] > 2 AND [g_2].[ParentID] = [ch].[ParentID]
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
WHERE
	(
		SELECT
			Min([ch_1].[ChildID])
		FROM
			[Child] [ch_1]
		WHERE
			[ch_1].[ParentID] > 2 AND [g_2].[ParentID] = [ch_1].[ParentID]
	) IS NOT NULL

