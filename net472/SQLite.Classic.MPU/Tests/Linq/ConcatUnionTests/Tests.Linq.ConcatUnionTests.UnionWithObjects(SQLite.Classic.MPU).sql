BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[p],
	[t1].[p_1],
	[t1].[p2],
	[t1].[p2_1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	(
		SELECT
			[p].[ParentID] as [p],
			[p].[Value1] as [p_1],
			[p2].[ParentID] as [p2],
			[p2].[Value1] as [p2_1]
		FROM
			[Parent] [p],
			[Parent] [p2]
	) [t1]
		INNER JOIN [Child] [c_1] ON [t1].[p] = [c_1].[ParentID]
UNION
SELECT
	[t2].[p],
	[t2].[p_1],
	[t2].[p2],
	[t2].[p2_1],
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	(
		SELECT
			[p2_1].[ParentID] as [p2],
			[p_1].[ParentID] as [p],
			[p_1].[Value1] as [p_1],
			[p2_1].[Value1] as [p2_1]
		FROM
			[Parent] [p_1],
			[Parent] [p2_1]
	) [t2]
		INNER JOIN [Child] [c_2] ON [t2].[p2] = [c_2].[ParentID]

