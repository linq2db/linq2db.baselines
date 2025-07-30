BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			[Child] [t1]
		LIMIT @take
	) [t2]

