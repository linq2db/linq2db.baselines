-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
		LIMIT @take
	) [t2]

-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

