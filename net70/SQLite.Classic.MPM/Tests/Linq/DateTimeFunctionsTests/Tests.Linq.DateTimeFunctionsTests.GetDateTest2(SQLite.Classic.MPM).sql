BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 5

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			Date(CURRENT_TIMESTAMP) as [c1]
		FROM
			[Parent] [v]
				INNER JOIN [Child] [s] ON [v].[ParentID] = [s].[ParentID]
		WHERE
			[v].[Value1] > 0
	) [t1]
GROUP BY
	[t1].[c1]
LIMIT @take

