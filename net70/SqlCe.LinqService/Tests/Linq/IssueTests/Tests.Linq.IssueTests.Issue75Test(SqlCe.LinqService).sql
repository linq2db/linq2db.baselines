BeforeExecute
-- SqlCe

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID],
	[t1].[CountChildren],
	[t2].[CountChildren2],
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
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c2_1]
			WHERE
				[c2_1].[ParentID] = [c_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				[Child] [c2_2]
			WHERE
				[c2_2].[ParentID] <> [c_1].[ParentID]
		))
			THEN 1
		ELSE 0
	END,
	[t3].[AllChildrenMin],
	[t4].[AllChildrenMax]
FROM
	[Child] [c_1]
		LEFT JOIN (
			SELECT
				Count(*) as [CountChildren],
				[c2_3].[ParentID]
			FROM
				[Child] [c2_3]
			GROUP BY
				[c2_3].[ParentID]
		) [t1] ON [t1].[ParentID] = [c_1].[ParentID]
		LEFT JOIN (
			SELECT
				Count(*) as [CountChildren2],
				[c2_4].[ParentID]
			FROM
				[Child] [c2_4]
			GROUP BY
				[c2_4].[ParentID]
		) [t2] ON [t2].[ParentID] = [c_1].[ParentID]
		LEFT JOIN (
			SELECT
				Min([c2_5].[ChildID]) as [AllChildrenMin],
				[c2_5].[ParentID]
			FROM
				[Child] [c2_5]
			GROUP BY
				[c2_5].[ParentID]
		) [t3] ON [t3].[ParentID] = [c_1].[ParentID]
		LEFT JOIN (
			SELECT
				Max([c2_6].[ChildID]) as [AllChildrenMax],
				[c2_6].[ParentID]
			FROM
				[Child] [c2_6]
			GROUP BY
				[c2_6].[ParentID]
		) [t4] ON [t4].[ParentID] = [c_1].[ParentID]
		INNER JOIN [Parent] [parent_1] ON [c_1].[ParentID] = [parent_1].[ParentID]
WHERE
	[parent_1].[Value1] < 7

