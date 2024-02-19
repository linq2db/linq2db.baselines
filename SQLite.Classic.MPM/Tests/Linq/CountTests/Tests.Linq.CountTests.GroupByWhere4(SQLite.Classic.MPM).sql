BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_2].[ParentID]
FROM
	(
		SELECT
			Count(*) as [Count_1],
			[a_Parent].[ParentID]
		FROM
			[GrandChild] [g_1]
				INNER JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[a_Parent].[ParentID]
	) [g_2]
WHERE
	[g_2].[Count_1] > 2

