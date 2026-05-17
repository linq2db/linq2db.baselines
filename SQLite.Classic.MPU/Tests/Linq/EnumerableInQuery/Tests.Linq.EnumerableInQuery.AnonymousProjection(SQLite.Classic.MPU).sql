-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN (
			SELECT NULL [ParentID] WHERE 1 = 0
			UNION ALL
			VALUES
				(1), (2), (3), (4), (5), (6), (7)
			) [d] ON [d].[ParentID] = [m_1].[ParentID]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

