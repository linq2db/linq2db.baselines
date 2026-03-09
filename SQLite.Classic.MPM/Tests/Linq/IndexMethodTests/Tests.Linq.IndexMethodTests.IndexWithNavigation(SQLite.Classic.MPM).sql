-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[c_2].[Index_1],
	[c_2].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [c_1].[ParentID] ORDER BY [c_1].[ChildID]) - 1 as [Index_1],
				[c_1].[ChildID],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		) [c_2] ON [p].[ParentID] = [c_2].[ParentID]
ORDER BY
	[c_2].[ChildID]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Item1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID] as [Item1]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Item1] = [d].[ParentID]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

