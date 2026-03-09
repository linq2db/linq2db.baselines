-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN (
			SELECT
				ROW_NUMBER() OVER (PARTITION BY [e].[ChildID], [e].[ParentID] ORDER BY [e].[ChildID]) as [RowNumber],
				[e].[ChildID],
				[e].[ParentID]
			FROM
				[Child] [e]
			WHERE
				[e].[ChildID] NOT IN (2)
		) [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[RowNumber] = 1
ORDER BY
	[c_1].[ChildID]

-- SQLite.MS SQLite

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

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

