BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(CASE
		WHEN [g_1].[ChildID] > 30 THEN 1
		ELSE NULL
	END),
	(
		SELECT
			Sum([ch].[ChildID])
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 30 AND [g_1].[ParentID] = [ch].[ParentID]
	)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

