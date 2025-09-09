BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[ParentID],
	[p].[ParentID] as [ParentID_1],
	[p].[Value1],
	NULL as [ch],
	NULL as [ParentID_2],
	NULL as [ChildID]
FROM
	[Parent] [p]
UNION
SELECT
	Coalesce([p2].[Value1], 0) as [ParentID],
	NULL as [ParentID_1],
	NULL as [Value1],
	[t1].[cond] as [ch],
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

