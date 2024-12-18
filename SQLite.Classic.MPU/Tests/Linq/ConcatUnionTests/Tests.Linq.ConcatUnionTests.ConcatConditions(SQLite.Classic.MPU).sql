﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t3].[ParentID]
		FROM
			(
				SELECT
					CASE
						WHEN [p].[ParentID] IS NULL THEN 1
						ELSE 0
					END as [Parent1],
					[p].[ParentID]
				FROM
					[Child] [t1]
						LEFT JOIN [Parent] [p] ON [p].[ParentID] = [t1].[ParentID]
				UNION ALL
				SELECT
					NULL as [Parent1],
					NULL as [ParentID]
				FROM
					[Child] [t2]
						LEFT JOIN [Parent] [p_1] ON [p_1].[ParentID] = [t2].[ParentID]
			) [t3]
		WHERE
			[t3].[Parent1] IS NOT NULL
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID] AND [m_1].[ParentID] IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Parent1],
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[Parent1],
	[t1].[ParentID],
	[t1].[Value1],
	[t1].[ParentID]
FROM
	(
		SELECT
			CASE
				WHEN [p].[ParentID] IS NULL THEN 1
				ELSE 0
			END as [Parent1],
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [p] ON [p].[ParentID] = [c_1].[ParentID]
	) [t1]
UNION ALL
SELECT
	CASE
		WHEN [p_1].[ParentID] IS NULL THEN 1
		ELSE 0
	END,
	[p_1].[ParentID],
	[p_1].[Value1],
	NULL,
	NULL,
	NULL,
	NULL
FROM
	[Child] [t2]
		LEFT JOIN [Parent] [p_1] ON [p_1].[ParentID] = [t2].[ParentID]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

