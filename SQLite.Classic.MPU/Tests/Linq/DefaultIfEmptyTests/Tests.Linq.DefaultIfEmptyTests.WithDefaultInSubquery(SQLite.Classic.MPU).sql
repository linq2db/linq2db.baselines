-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Coalesce((
		SELECT
			SUM(CASE
				WHEN [d].[ParentID] IS NOT NULL THEN [d].[ParentID]
				ELSE -100
			END)
		FROM
			(
				SELECT
					1 as [c1]
			) [t1]
				LEFT JOIN [Child] [d] ON [p].[ParentID] = [d].[ParentID]
	), 0)
FROM
	[Parent] [p]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

