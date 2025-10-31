-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[ParentID_1],
	[t1].[ChildID],
	[t1].[Any_1],
	[t1].[ChildID_1],
	[t1].[ParentID_2],
	[t1].[ChildID_2],
	[t1].[ParentID_3],
	[t1].[ChildArray],
	[t1].[ChildArray_1],
	[t1].[ChildDictionary1],
	[t1].[ChildDictionary1_1],
	[t1].[ChildDictionary2],
	[t1].[ChildDictionary2_1],
	[t1].[ChildDictionary2_2],
	[t1].[ChildDictionary2_3]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1],
			[c1_1].[ParentID] as [ParentID_1],
			[c1_1].[ChildID],
			EXISTS(
				SELECT
					*
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ChildID] > 2
			) as [Any_1],
			(
				SELECT
					[c_2].[ChildID]
				FROM
					[Child] [c_2]
				WHERE
					[c_2].[ChildID] > 2 AND [c_2].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ChildID_1],
			(
				SELECT
					[c_3].[ParentID]
				FROM
					[Child] [c_3]
				WHERE
					[c_3].[ChildID] > 2 AND [c_3].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ParentID_2],
			(
				SELECT
					[c_4].[ChildID]
				FROM
					[Child] [c_4]
				WHERE
					[c_4].[ChildID] > 2 AND [c_4].[ParentID] >= 2
				LIMIT 1
			) as [ChildID_2],
			(
				SELECT
					[c_5].[ParentID]
				FROM
					[Child] [c_5]
				WHERE
					[c_5].[ChildID] > 2 AND [c_5].[ParentID] >= 2
				LIMIT 1
			) as [ParentID_3],
			(
				SELECT
					[c_6].[ChildID]
				FROM
					[Child] [c_6]
				WHERE
					[c_6].[ChildID] > 2 AND [c_6].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ChildArray],
			(
				SELECT
					[c_7].[ParentID]
				FROM
					[Child] [c_7]
				WHERE
					[c_7].[ChildID] > 2 AND [c_7].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ChildArray_1],
			(
				SELECT
					[c_8].[ChildID]
				FROM
					[Child] [c_8]
				WHERE
					[c_8].[ChildID] > 2 AND [c_8].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ChildDictionary1],
			(
				SELECT
					[c_9].[ParentID]
				FROM
					[Child] [c_9]
				WHERE
					[c_9].[ChildID] > 2 AND [c_9].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ChildDictionary1_1],
			(
				SELECT
					'ChildID'
				FROM
					[Child] [c_10]
				WHERE
					[c_10].[ChildID] > 2 AND [c_10].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ChildDictionary2],
			(
				SELECT
					[c_11].[ChildID]
				FROM
					[Child] [c_11]
				WHERE
					[c_11].[ChildID] > 2 AND [c_11].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ChildDictionary2_1],
			(
				SELECT
					'ParentID'
				FROM
					[Child] [c_12]
				WHERE
					[c_12].[ChildID] > 2 AND [c_12].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ChildDictionary2_2],
			(
				SELECT
					[c_13].[ParentID]
				FROM
					[Child] [c_13]
				WHERE
					[c_13].[ChildID] > 2 AND [c_13].[ParentID] >= [p].[ParentID]
				LIMIT 1
			) as [ChildDictionary2_3]
		FROM
			[Parent] [p]
				LEFT JOIN (
					SELECT
						[c1].[ParentID],
						[c1].[ChildID],
						ROW_NUMBER() OVER (PARTITION BY [c1].[ParentID] ORDER BY [c1].[ParentID]) as [rn]
					FROM
						[Child] [c1]
				) [c1_1] ON [c1_1].[ParentID] = [p].[ParentID] AND [c1_1].[rn] <= 1
	) [t1]
ORDER BY
	[t1].[ParentID]

