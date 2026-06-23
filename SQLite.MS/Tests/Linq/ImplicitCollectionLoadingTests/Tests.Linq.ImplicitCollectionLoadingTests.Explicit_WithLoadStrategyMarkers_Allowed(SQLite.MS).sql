-- SQLite.MS SQLite

WITH [CTE_1] ([ParentID], [field])
AS MATERIALIZED
(
	SELECT
		[p].[ParentID],
		ROW_NUMBER() OVER (ORDER BY [p].[ParentID])
	FROM
		[Parent] [p]
	ORDER BY
		[p].[ParentID]
),
[CTE_2]
(
	[Detail_ParentID],
	[Detail_ChildID],
	[field],
	[Key_1]
)
AS
(
	SELECT
		[d].[ParentID],
		[d].[ChildID],
		0,
		[kd].[v0ParentID]
	FROM
		(
			SELECT DISTINCT
				[t1].[ParentID] as [v0ParentID]
			FROM
				[CTE_1] [t1]
		) [kd]
			INNER JOIN [Child] [d] ON [kd].[v0ParentID] = [d].[ParentID]
)
SELECT
	[t4].[Item1],
	[t4].[Item2],
	[t4].[Item3],
	[t4].[Item4],
	[t4].[Item5]
FROM
	(
		SELECT
			CAST(0 AS INTEGER) as [Item1],
			[t2].[field] as [Item3],
			[t2].[Key_1] as [Item2],
			[t2].[Detail_ParentID] as [Item4],
			[t2].[Detail_ChildID] as [Item5]
		FROM
			[CTE_2] [t2]
		UNION ALL
		SELECT
			CAST(1 AS INTEGER) as [Item1],
			[t3].[field] as [Item3],
			[t3].[ParentID] as [Item2],
			[t3].[ParentID] as [Item4],
			NULL as [Item5]
		FROM
			[CTE_1] [t3]
	) [t4]
ORDER BY
	[t4].[Item1],
	[t4].[Item3],
	[t4].[Item2]

-- SQLite.MS SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SQLite.MS SQLite

SELECT
	[k_1].[item],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT NULL [item] WHERE 1 = 0
		UNION ALL
		VALUES
			(1), (2), (3), (4), (5), (6), (7)
		) [k_1]
		INNER JOIN [Child] [d] ON [k_1].[item] = [d].[ParentID]

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
ORDER BY
	[m_1].[ParentID]

-- SQLite.MS SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

