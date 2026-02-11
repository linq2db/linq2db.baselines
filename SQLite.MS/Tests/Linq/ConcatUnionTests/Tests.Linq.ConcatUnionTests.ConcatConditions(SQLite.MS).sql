-- SQLite.MS SQLite

SELECT
	[m_1].[ParentID],
	[m_1].[ParentID_1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t3].[ParentID],
			[t3].[ParentID_1]
		FROM
			(
				SELECT
					[p].[ParentID] IS NULL as [Parent1],
					[p].[ParentID],
					[p].[ParentID] as [ParentID_1]
				FROM
					[Child] [t1]
						LEFT JOIN [Parent] [p] ON [p].[ParentID] = [t1].[ParentID]
				UNION ALL
				SELECT
					NULL as [Parent1],
					NULL as [ParentID],
					NULL as [ParentID_1]
				FROM
					[Child] [t2]
						LEFT JOIN [Parent] [p_1] ON [p_1].[ParentID] = [t2].[ParentID]
			) [t3]
		WHERE
			[t3].[Parent1] IS NOT NULL
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] IS NOT NULL AND [m_1].[ParentID_1] = [d].[ParentID]

-- SQLite.MS SQLite

SELECT
	[t1].[Parent1],
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[Parent1],
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[ParentID],
	[t1].[ParentID]
FROM
	(
		SELECT
			[p].[ParentID] IS NULL as [Parent1],
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [p] ON [p].[ParentID] = [c_1].[ParentID]
	) [t1]
UNION ALL
SELECT
	[p_1].[ParentID] IS NULL,
	[p_1].[ParentID],
	[p_1].[Value1],
	NULL,
	NULL,
	NULL,
	NULL,
	NULL
FROM
	[Child] [t2]
		LEFT JOIN [Parent] [p_1] ON [p_1].[ParentID] = [t2].[ParentID]

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

