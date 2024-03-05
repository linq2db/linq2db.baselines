BeforeExecute
-- SqlCe

SELECT
	[t1].[Count_1],
	[t2].[Sum_1],
	[t3].[Min_1],
	[t4].[Max_1],
	[t5].[Average]
FROM
	(
		SELECT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ChildID] > 30
		GROUP BY
			[g_1].[ParentID]
	) [g_2]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ChildID] > 30 AND [ch].[ChildID] > 30 AND [g_2].[ParentID] = [ch].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				Sum([ch_1].[ChildID]) as [Sum_1]
			FROM
				[Child] [ch_1]
			WHERE
				[ch_1].[ChildID] > 30 AND [ch_1].[ChildID] > 30 AND
				[g_2].[ParentID] = [ch_1].[ParentID]
		) [t2]
		OUTER APPLY (
			SELECT
				Min([ch_2].[ChildID]) as [Min_1]
			FROM
				[Child] [ch_2]
			WHERE
				[ch_2].[ChildID] > 30 AND [ch_2].[ChildID] > 30 AND
				[g_2].[ParentID] = [ch_2].[ParentID]
		) [t3]
		OUTER APPLY (
			SELECT
				Max([ch_3].[ChildID]) as [Max_1]
			FROM
				[Child] [ch_3]
			WHERE
				[ch_3].[ChildID] > 30 AND [ch_3].[ChildID] > 30 AND
				[g_2].[ParentID] = [ch_3].[ParentID]
		) [t4]
		OUTER APPLY (
			SELECT
				Avg([ch_4].[ChildID]) as [Average]
			FROM
				[Child] [ch_4]
			WHERE
				[ch_4].[ChildID] > 30 AND [ch_4].[ChildID] > 30 AND
				[g_2].[ParentID] = [ch_4].[ParentID]
		) [t5]

