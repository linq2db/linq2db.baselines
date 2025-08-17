BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[p1].[ParentID],
	[p1].[ParentID],
	[p1].[Value1],
	NULL,
	NULL,
	NULL
FROM
	[Parent] [p1]
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
		LEFT JOIN (
			SELECT
				[a_Children].[ParentID] as [cond],
				[a_Children].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [a_Children].[ParentID] ORDER BY [a_Children].[ChildID] DESC) as [rn]
			FROM
				[Child] [a_Children]
		) [t1] ON [p2].[ParentID] = [t1].[cond] AND [t1].[rn] <= 1

