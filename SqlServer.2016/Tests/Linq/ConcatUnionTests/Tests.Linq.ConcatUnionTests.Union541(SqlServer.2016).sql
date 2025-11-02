-- SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[ParentID],
	[p].[Value1],
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p]
UNION
SELECT
	Coalesce([p2].[Value1], 0),
	NULL,
	NULL,
	[t1].[cond],
	[t1].[cond],
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

