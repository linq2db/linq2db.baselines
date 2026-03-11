-- SQLite.MS SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
WHERE
	[d].[ParentID] <> 0

-- SQLite.MS SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SQLite.MS SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
WHERE
	[d].[ParentID] <> 0

-- SQLite.MS SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

