BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[l].[ParentID]
FROM
	[Child] [l]
LIMIT @take

BeforeExecute
RollbackTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	1
FROM
	[Parent] [sep]

