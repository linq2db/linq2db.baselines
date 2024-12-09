BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [t1].[ParentID] IS NULL THEN 0
		ELSE [t2].[ParentID]
	END as [c1],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_5]
			WHERE
				[c_5].[ParentID] = [p].[ParentID] AND [c_5].[ChildID] > -100
		)
			THEN 1
		ELSE 0
	END as [c2],
	[t3].[COUNT_1],
	[t4].[ParentID],
	[t4].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] > -100 AND
				[c_1].[ParentID] > 0
			ORDER BY
				[c_1].[ChildID]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[c_2].[ParentID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ParentID] = [p].[ParentID] AND [c_2].[ChildID] > -100 AND
				[c_2].[ParentID] > 0
			ORDER BY
				[c_2].[ChildID]
		) [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_3]
			WHERE
				[c_3].[ParentID] = [p].[ParentID] AND [c_3].[ChildID] > -100
		) [t3]
		OUTER APPLY (
			SELECT TOP (1)
				[c_4].[ParentID],
				[c_4].[ChildID]
			FROM
				[Child] [c_4]
			WHERE
				[c_4].[ParentID] = [p].[ParentID] AND [c_4].[ChildID] > -100
			ORDER BY
				[c_4].[ChildID]
		) [t4]

