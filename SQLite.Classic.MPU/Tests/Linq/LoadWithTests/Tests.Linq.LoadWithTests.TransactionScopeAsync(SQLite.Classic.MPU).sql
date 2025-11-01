-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT
			[x].[ParentID]
		FROM
			[Parent] [x]
		WHERE
			[x].[ParentID] = 1
		LIMIT 1
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 1
LIMIT 1

