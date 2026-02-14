-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			SUM(CASE
				WHEN [d].[ParentID] IS NOT NULL THEN [d].[ParentID]
				ELSE -100
			END) as [Sum_1]
		FROM
			(
				SELECT
					1 as [c1]
			) [t1]
				LEFT JOIN [Child] [d] ON [p].[ParentID] = [d].[ParentID]
	)
FROM
	[Parent] [p]

-- SQLite.Classic SQLite

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

-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

