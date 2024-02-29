BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
LIMIT @take

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	1
FROM
	[Parent] [p]

