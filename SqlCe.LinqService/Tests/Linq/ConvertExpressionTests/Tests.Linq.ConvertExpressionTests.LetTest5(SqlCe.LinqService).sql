BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_4]
			WHERE
				[c_4].[ParentID] = [p].[ParentID] AND [c_4].[ChildID] > -100
		)
			THEN 1
		ELSE 0
	END as [c1],
	[t1].[COUNT_1],
	[t2].[ParentID],
	[t3].[ParentID] as [ParentID_1],
	[t3].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] > -100
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
			SELECT TOP (1)
				[c_3].[ParentID],
				[c_3].[ChildID]
			FROM
				[Child] [c_3]
			WHERE
				[c_3].[ParentID] = [p].[ParentID] AND [c_3].[ChildID] > -100
			ORDER BY
				[c_3].[ChildID]
		) [t3]

