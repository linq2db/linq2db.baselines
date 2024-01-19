BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(CASE
		WHEN [g_1].[ChildID] > 30 THEN 1
		ELSE NULL
	END),
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[ch].[ChildID] > 30 AND [g_1].[ParentID] = [ch].[ParentID]
	),
	Count(*)
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

