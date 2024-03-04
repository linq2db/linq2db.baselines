BeforeExecute
-- SqlCe

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID],
	[t2].[Count_1],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c2_2]
			WHERE
				[c2_2].[ParentID] = [c_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END as [HasChildren],
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				[Child] [c2_3]
			WHERE
				[c2_3].[ParentID] <> [c_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END as [AllChildren],
	[t3].[Min_1],
	[t4].[Max_1]
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[Child] [t1]
			WHERE
				[t1].[ParentID] = [c_1].[ParentID]
		) [t2]
		OUTER APPLY (
			SELECT
				Min([c2].[ChildID]) as [Min_1]
			FROM
				[Child] [c2]
			WHERE
				[c2].[ParentID] = [c_1].[ParentID]
		) [t3]
		OUTER APPLY (
			SELECT
				Max([c2_1].[ChildID]) as [Max_1]
			FROM
				[Child] [c2_1]
			WHERE
				[c2_1].[ParentID] = [c_1].[ParentID]
		) [t4]
		INNER JOIN [Parent] [parent_1] ON [c_1].[ParentID] = [parent_1].[ParentID]
WHERE
	[parent_1].[Value1] < 7

