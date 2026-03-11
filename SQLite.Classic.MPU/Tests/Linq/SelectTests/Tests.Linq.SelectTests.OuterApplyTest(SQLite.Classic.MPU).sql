-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT DISTINCT
	[p].[ParentID],
	[p].[Value1],
	[c1_1].[ParentID],
	[c1_1].[ChildID],
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ChildID] > 2
	),
	(
		SELECT
			[c_3].[ChildID]
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ChildID] > 2 AND [c_3].[ParentID] >= [p].[ParentID]
		LIMIT 1
	),
	(
		SELECT
			[c_4].[ParentID]
		FROM
			[Child] [c_4]
		WHERE
			[c_4].[ChildID] > 2 AND [c_4].[ParentID] >= [p].[ParentID]
		LIMIT 1
	),
	[t1].[ChildID],
	[t1].[ParentID],
	(
		SELECT
			[c_5].[ChildID]
		FROM
			[Child] [c_5]
		WHERE
			[c_5].[ChildID] > 2 AND [c_5].[ParentID] >= [p].[ParentID]
		LIMIT 1
	),
	(
		SELECT
			[c_6].[ParentID]
		FROM
			[Child] [c_6]
		WHERE
			[c_6].[ChildID] > 2 AND [c_6].[ParentID] >= [p].[ParentID]
		LIMIT 1
	),
	(
		SELECT
			[c_7].[ChildID]
		FROM
			[Child] [c_7]
		WHERE
			[c_7].[ChildID] > 2 AND [c_7].[ParentID] >= [p].[ParentID]
		LIMIT 1
	),
	(
		SELECT
			[c_8].[ParentID]
		FROM
			[Child] [c_8]
		WHERE
			[c_8].[ChildID] > 2 AND [c_8].[ParentID] >= [p].[ParentID]
		LIMIT 1
	),
	(
		SELECT
			'ChildID'
		FROM
			[Child] [c_9]
		WHERE
			[c_9].[ChildID] > 2 AND [c_9].[ParentID] >= [p].[ParentID]
		LIMIT 1
	),
	(
		SELECT
			[c_10].[ChildID]
		FROM
			[Child] [c_10]
		WHERE
			[c_10].[ChildID] > 2 AND [c_10].[ParentID] >= [p].[ParentID]
		LIMIT 1
	),
	(
		SELECT
			'ParentID'
		FROM
			[Child] [c_11]
		WHERE
			[c_11].[ChildID] > 2 AND [c_11].[ParentID] >= [p].[ParentID]
		LIMIT 1
	),
	(
		SELECT
			[c_12].[ParentID]
		FROM
			[Child] [c_12]
		WHERE
			[c_12].[ChildID] > 2 AND [c_12].[ParentID] >= [p].[ParentID]
		LIMIT 1
	)
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[c1].[ParentID],
				[c1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [c1].[ParentID] ORDER BY [c1].[ParentID]) as [rn]
			FROM
				[Child] [c1]
		) [c1_1] ON [c1_1].[ParentID] = [p].[ParentID] AND [c1_1].[rn] = 1
		LEFT JOIN (
			SELECT
				[c_1].[ChildID],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ChildID] > 2 AND [c_1].[ParentID] >= 2
			LIMIT 1
		) [t1] ON 1=1
ORDER BY
	[p].[ParentID]

