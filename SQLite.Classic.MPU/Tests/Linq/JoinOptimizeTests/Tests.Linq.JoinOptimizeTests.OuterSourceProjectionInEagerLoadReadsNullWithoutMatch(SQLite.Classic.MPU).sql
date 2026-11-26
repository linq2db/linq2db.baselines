-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[m_1].[ChildID],
	[m_1].[Value1],
	CASE
		WHEN [d_1].[not_null] IS NOT NULL THEN [m_1].[Value1]
		ELSE NULL
	END
FROM
	(
		SELECT DISTINCT
			[p].[Value1],
			[c_1].[ChildID]
		FROM
			[Parent] [p],
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	) [m_1]
		LEFT JOIN (
			SELECT
				1 as [not_null],
				[d].[ChildID]
			FROM
				[GrandChild] [d]
		) [d_1] ON [d_1].[ChildID] = [m_1].[ChildID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[c_1].[ChildID],
	[p].[Value1]
FROM
	[Parent] [p],
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

