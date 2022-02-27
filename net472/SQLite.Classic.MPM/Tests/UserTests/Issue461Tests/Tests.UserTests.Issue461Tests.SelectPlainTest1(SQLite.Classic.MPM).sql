BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			[c_1].[ParentID] + 1
		FROM
			[Child] [c_1]
		LIMIT @take
	)
FROM
	[Parent] [p]

