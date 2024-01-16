BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[l].[ParentID]
FROM
	[Child] [l]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

SELECT
	1
FROM
	[Parent] [sep]

