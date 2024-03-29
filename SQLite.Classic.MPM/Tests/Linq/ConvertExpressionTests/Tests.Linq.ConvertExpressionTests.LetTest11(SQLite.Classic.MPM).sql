﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 0
ORDER BY
	[c_1].[ParentID]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] > -100
ORDER BY
	[c_1].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	1
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

