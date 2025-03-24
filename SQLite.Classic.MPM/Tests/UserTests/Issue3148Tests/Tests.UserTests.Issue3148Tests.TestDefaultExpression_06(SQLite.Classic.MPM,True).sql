﻿BeforeExecute
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
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
WHERE
	[d].[ParentID] <> 0

BeforeExecute
DisposeTransaction
BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

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
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
WHERE
	[d].[ParentID] <> 0

BeforeExecute
DisposeTransaction
BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

