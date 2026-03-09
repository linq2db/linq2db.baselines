-- SQLite.Classic SQLite

SELECT
	[p2].[ParentID],
	[c_2].[ChildIDCount]
FROM
	[Parent] [p]
		INNER JOIN (
			SELECT
				COUNT(*) as [ChildIDCount],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			GROUP BY
				[c_1].[ChildID],
				[c_1].[ParentID]
		) [c_2] ON [p].[ParentID] = [c_2].[ParentID]
		INNER JOIN [Parent] [p2] ON [p].[ParentID] = [p2].[ParentID]

-- SQLite.Classic SQLite

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

-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

