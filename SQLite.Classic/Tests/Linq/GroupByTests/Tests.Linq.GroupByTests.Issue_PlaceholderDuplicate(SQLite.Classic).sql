-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 100

SELECT
	[r].[PersonID],
	[r].[PersonID]
FROM
	[Person] [r]
ORDER BY
	[r].[PersonID]
LIMIT @take

