﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @pattern NVarChar(3) -- String
SET     @pattern = '%1%'
DECLARE @take  -- Int32
SET     @take = 10

SELECT
	[t1].[FirstName]
FROM
	(
		SELECT
			[p].[FirstName]
		FROM
			[Person] [p]
		WHERE
			[p].[FirstName] LIKE '1'
		UNION ALL
		SELECT
			[p_1].[FirstName]
		FROM
			[Person] [p_1]
		WHERE
			Cast([p_1].[PersonID] as NVarChar(11)) LIKE @pattern ESCAPE '~'
	) [t1]
LIMIT @take

