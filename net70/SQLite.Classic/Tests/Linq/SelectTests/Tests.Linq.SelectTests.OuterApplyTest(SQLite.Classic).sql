BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
				LEFT JOIN (
					SELECT
						[c1].[ParentID],
						[c1].[ChildID],
						ROW_NUMBER() OVER (PARTITION BY [c1].[ParentID] ORDER BY [c1].[ParentID]) as [rn]
					FROM
						[Child] [c1]
				) [c1_1] ON [c1_1].[ParentID] = [p].[ParentID] AND [c1_1].[rn] <= 1
				LEFT JOIN (
					SELECT
						[c_1].[ChildID],
						[c_1].[ParentID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] >= 2 AND [c_1].[ChildID] > 2
					LIMIT 1
				) [t1] ON 1=1
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] >= [m_1].[ParentID]
WHERE
	[d].[ChildID] > 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
				LEFT JOIN (
					SELECT
						[c1].[ParentID],
						[c1].[ChildID],
						ROW_NUMBER() OVER (PARTITION BY [c1].[ParentID] ORDER BY [c1].[ParentID]) as [rn]
					FROM
						[Child] [c1]
				) [c1_1] ON [c1_1].[ParentID] = [p].[ParentID] AND [c1_1].[rn] <= 1
				LEFT JOIN (
					SELECT
						[c_1].[ChildID],
						[c_1].[ParentID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] >= 2 AND [c_1].[ChildID] > 2
					LIMIT 1
				) [t1] ON 1=1
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] >= [m_1].[ParentID]
WHERE
	[d].[ChildID] > 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
				LEFT JOIN (
					SELECT
						[c1].[ParentID],
						[c1].[ChildID],
						ROW_NUMBER() OVER (PARTITION BY [c1].[ParentID] ORDER BY [c1].[ParentID]) as [rn]
					FROM
						[Child] [c1]
				) [c1_1] ON [c1_1].[ParentID] = [p].[ParentID] AND [c1_1].[rn] <= 1
				LEFT JOIN (
					SELECT
						[c_1].[ChildID],
						[c_1].[ParentID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] >= 2 AND [c_1].[ChildID] > 2
					LIMIT 1
				) [t1] ON 1=1
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] >= [m_1].[ParentID]
WHERE
	[d].[ChildID] > 2

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
				LEFT JOIN (
					SELECT
						[c1].[ParentID],
						[c1].[ChildID],
						ROW_NUMBER() OVER (PARTITION BY [c1].[ParentID] ORDER BY [c1].[ParentID]) as [rn]
					FROM
						[Child] [c1]
				) [c1_1] ON [c1_1].[ParentID] = [p].[ParentID] AND [c1_1].[rn] <= 1
				LEFT JOIN (
					SELECT
						[c_1].[ChildID],
						[c_1].[ParentID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] >= 2 AND [c_1].[ChildID] > 2
					LIMIT 1
				) [t1] ON 1=1
	) [m_1]
		INNER JOIN [Child] [d] ON [d].[ParentID] >= [m_1].[ParentID]
WHERE
	[d].[ChildID] > 2

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t2].[ParentID_2],
	[t2].[Value1],
	[t2].[ParentID],
	[t2].[ChildID],
	[t2].[Any_1],
	[t2].[ChildID_1],
	[t2].[ParentID_1]
FROM
	(
		SELECT DISTINCT
			[c1_1].[ParentID],
			[c1_1].[ChildID],
			[t1].[ChildID] as [ChildID_1],
			[t1].[ParentID] as [ParentID_1],
			[p].[ParentID] as [ParentID_2],
			[p].[Value1],
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						[Child] [c_2]
					WHERE
						[c_2].[ChildID] > 2
				)
					THEN 1
				ELSE 0
			END as [Any_1]
		FROM
			[Parent] [p]
				LEFT JOIN (
					SELECT
						[c1].[ParentID],
						[c1].[ChildID],
						ROW_NUMBER() OVER (PARTITION BY [c1].[ParentID] ORDER BY [c1].[ParentID]) as [rn]
					FROM
						[Child] [c1]
				) [c1_1] ON [c1_1].[ParentID] = [p].[ParentID] AND [c1_1].[rn] <= 1
				LEFT JOIN (
					SELECT
						[c_1].[ChildID],
						[c_1].[ParentID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] >= 2 AND [c_1].[ChildID] > 2
					LIMIT 1
				) [t1] ON 1=1
	) [t2]
ORDER BY
	[t2].[ParentID_2]

