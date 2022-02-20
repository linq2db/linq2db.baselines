BeforeExecute
-- SqlCe

SELECT
	[child_1].[ChildID],
	[child_1].[ParentID],
	[child_1].[CountChildren2],
	[child_1].[c1],
	[child_1].[c2],
	[child_1].[AllChildrenMin],
	[child_1].[AllChildrenMax]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[c_1].[ChildID],
			[t1].[CountChildren2],
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						[Child] [c2]
					WHERE
						[c2].[ParentID] = [c_1].[ParentID]
				)
					THEN 1
				ELSE 0
			END as [c1],
			CASE
				WHEN (NOT EXISTS(
					SELECT
						*
					FROM
						[Child] [c2_1]
					WHERE
						[c2_1].[ParentID] <> [c_1].[ParentID]
				))
					THEN 1
				ELSE 0
			END as [c2],
			[t2].[AllChildrenMin],
			[t3].[AllChildrenMax]
		FROM
			[Child] [c_1]
				LEFT JOIN (
					SELECT
						Count(*) as [CountChildren2],
						[c2_2].[ParentID]
					FROM
						[Child] [c2_2]
					GROUP BY
						[c2_2].[ParentID]
				) [t1] ON [t1].[ParentID] = [c_1].[ParentID]
				LEFT JOIN (
					SELECT
						Min([c2_3].[ChildID]) as [AllChildrenMin],
						[c2_3].[ParentID]
					FROM
						[Child] [c2_3]
					GROUP BY
						[c2_3].[ParentID]
				) [t2] ON [t2].[ParentID] = [c_1].[ParentID]
				LEFT JOIN (
					SELECT
						Max([c2_4].[ChildID]) as [AllChildrenMax],
						[c2_4].[ParentID]
					FROM
						[Child] [c2_4]
					GROUP BY
						[c2_4].[ParentID]
				) [t3] ON [t3].[ParentID] = [c_1].[ParentID]
	) [child_1]
		INNER JOIN [Parent] [parent_1] ON [child_1].[ParentID] = [parent_1].[ParentID]
WHERE
	[parent_1].[Value1] < 7

