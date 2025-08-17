BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	MIN([t2].[ParentID])
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
		LIMIT @take
	) [t2]

