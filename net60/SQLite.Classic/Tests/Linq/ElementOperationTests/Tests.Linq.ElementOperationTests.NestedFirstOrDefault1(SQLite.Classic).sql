﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	1
FROM
	[Parent] [p]

