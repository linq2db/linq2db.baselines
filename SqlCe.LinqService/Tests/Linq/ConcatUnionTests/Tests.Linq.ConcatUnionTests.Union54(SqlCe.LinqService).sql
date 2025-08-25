BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p1].[ParentID],
	[p1].[ParentID] as [ParentID_1],
	[p1].[Value1],
	NULL as [c1],
	NULL as [ParentID_2],
	NULL as [ChildID]
FROM
	[Parent] [p1]
UNION
SELECT
	Coalesce([p2].[Value1], 0) as [ParentID],
	NULL as [ParentID_1],
	NULL as [Value1],
	[t1].[cond] as [c1],
	[t1].[cond] as [ParentID_2],
	[t1].[ChildID]
FROM
	[Parent] [p2]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID] as [cond],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[p2].[ParentID] = [a_Children].[ParentID]
			ORDER BY
				[a_Children].[ChildID] DESC
		) [t1]

