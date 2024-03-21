﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p NVarChar(1) -- String
SET     @p = 'p'

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
		WHEN CharIndex(@p, [p].[LastName]) = 0 THEN -1
		ELSE Length([p].[LastName]) - CharIndex('p', Reverse([p].[LastName]))
	END = 2 AND
	[p].[PersonID] = 1

