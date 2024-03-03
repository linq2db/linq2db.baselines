BeforeExecute
-- SQLite.MS SQLite

SELECT
	[g_2].[Value1]
FROM
	(
		SELECT
			Count(CASE
				WHEN [g_1].[ChildID] >= 20
					THEN 1
				ELSE NULL
			END) as [Count_1],
			[a_Parent].[Value1],
			[a_Parent].[ParentID]
		FROM
			[GrandChild] [g_1]
				INNER JOIN [Parent] [a_Parent] ON [g_1].[ParentID] = [a_Parent].[ParentID]
		GROUP BY
			[a_Parent].[ParentID],
			[a_Parent].[Value1]
	) [g_2]
WHERE
	[g_2].[Count_1] > 2 AND
	(
		SELECT
			Sum([ch].[ParentID])
		FROM
			[GrandChild] [ch]
				INNER JOIN [Parent] [a_Parent_1] ON [ch].[ParentID] = [a_Parent_1].[ParentID]
		WHERE
			[ch].[ChildID] >= 19 AND [g_2].[ParentID] = [a_Parent_1].[ParentID]
	) > 0 AND
	(
		SELECT
			Max([ch_1].[ParentID])
		FROM
			[GrandChild] [ch_1]
				INNER JOIN [Parent] [a_Parent_2] ON [ch_1].[ParentID] = [a_Parent_2].[ParentID]
		WHERE
			[ch_1].[ChildID] >= 19 AND [g_2].[ParentID] = [a_Parent_2].[ParentID]
	) > 0 AND
	(
		SELECT
			Max([ch_2].[ParentID])
		FROM
			[GrandChild] [ch_2]
				INNER JOIN [Parent] [a_Parent_3] ON [ch_2].[ParentID] = [a_Parent_3].[ParentID]
		WHERE
			[ch_2].[ChildID] >= 18 AND [g_2].[ParentID] = [a_Parent_3].[ParentID]
	) > 0

