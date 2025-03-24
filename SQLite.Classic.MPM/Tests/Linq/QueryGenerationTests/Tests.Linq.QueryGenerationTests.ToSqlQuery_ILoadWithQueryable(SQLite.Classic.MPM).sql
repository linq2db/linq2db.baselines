﻿BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			(
				SELECT
					[p].[ParentID]
				FROM
					[Parent] [p]
				WHERE
					[p].[ParentID] = 1
				LIMIT 2
			) [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1
LIMIT 2

BeforeExecute
DisposeTransaction
