-- SQLite.MS SQLite
SELECT
	[m_1].[ParentID],
	[m_1].[ChildID],
	[m_1].[ParentID_1],
	[d_1].[ParentID],
	[d_1].[ChildID],
	[d_1].[GrandChildID]
FROM
	(
		SELECT DISTINCT
			[d].[ParentID],
			[d].[ChildID],
			[t2].[ParentID] as [ParentID_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[ParentID]
				FROM
					[Parent] [t1]
			) [t2]
				INNER JOIN [Child] [d] ON [t2].[ParentID] = [d].[ParentID]
	) [m_1]
		INNER JOIN [GrandChild] [d_1] ON [m_1].[ParentID] = [d_1].[ParentID] AND [m_1].[ChildID] = [d_1].[ChildID]
ORDER BY
	[m_1].[ParentID_1]

-- SQLite.MS SQLite
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
ORDER BY
	[m_1].[ParentID]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
ORDER BY
	[t1].[ParentID]

