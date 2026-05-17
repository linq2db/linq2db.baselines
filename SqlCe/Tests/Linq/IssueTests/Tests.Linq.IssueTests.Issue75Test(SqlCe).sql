-- SqlCe

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID],
	[t1].[CountChildren],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c2_3]
			WHERE
				[c2_3].[ParentID] = [c_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END as [HasChildren],
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				[Child] [c2_4]
			WHERE
				[c2_4].[ParentID] <> [c_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END as [AllChildren],
	[t2].[AllChildrenMin],
	[t3].[AllChildrenMax]
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [CountChildren]
			FROM
				[Child] [c2]
			WHERE
				[c2].[ParentID] = [c_1].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT
				MIN([c2_1].[ChildID]) as [AllChildrenMin]
			FROM
				[Child] [c2_1]
			WHERE
				[c2_1].[ParentID] = [c_1].[ParentID]
		) [t2]
		OUTER APPLY (
			SELECT
				MAX([c2_2].[ChildID]) as [AllChildrenMax]
			FROM
				[Child] [c2_2]
			WHERE
				[c2_2].[ParentID] = [c_1].[ParentID]
		) [t3]
		INNER JOIN [Parent] [parent_1] ON [c_1].[ParentID] = [parent_1].[ParentID]
WHERE
	[parent_1].[Value1] < 7

