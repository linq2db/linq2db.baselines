-- SQLite.Classic SQLite
SELECT
	[m_1].[ParentID],
	[t1].[ChildID],
	[t1].[ParentID]
FROM
	[Parent] [m_1]
		LEFT JOIN (
			SELECT
				[c_1].[ChildID],
				[c_1].[ParentID],
				ROW_NUMBER() OVER (PARTITION BY [c_1].[ParentID] ORDER BY [c_1].[ChildID]) as [rn]
			FROM
				[Child] [c_1]
		) [t1] ON [t1].[ParentID] = [m_1].[ParentID] AND [t1].[rn] = 1

-- SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

