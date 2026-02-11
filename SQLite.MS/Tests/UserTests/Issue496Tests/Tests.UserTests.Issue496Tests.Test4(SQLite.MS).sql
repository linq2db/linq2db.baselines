-- SQLite.MS SQLite

SELECT
	[m_1].[Item1],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID] as [Item1]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON CAST([m_1].[Item1] AS INTEGER) = [d].[ParentID]

-- SQLite.MS SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

