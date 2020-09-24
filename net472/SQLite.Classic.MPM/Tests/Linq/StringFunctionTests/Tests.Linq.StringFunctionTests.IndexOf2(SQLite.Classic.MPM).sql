﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Length_1  -- Int32
SET     @Length_1 = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN @Length_1 = 0 AND Length([p].[LastName]) > 2
			THEN 2
		ELSE CharIndex('e', [p].[LastName], 3) - 1
	END = 4 AND
	[p].[PersonID] = 2

