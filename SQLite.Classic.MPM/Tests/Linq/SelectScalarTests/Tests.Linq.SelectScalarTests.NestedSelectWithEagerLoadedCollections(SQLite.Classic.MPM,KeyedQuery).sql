-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ChildID] = [d].[ChildID]
	),
	[d].[ChildID] + 1
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
ORDER BY
	[d].[ChildID],
	[m_1].[ParentID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	(
		SELECT
			COUNT(*)
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ParentID] = [m_1].[ParentID]
	)
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		CROSS JOIN [Child] [d]
ORDER BY
	[d].[ChildID],
	[m_1].[ParentID]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

