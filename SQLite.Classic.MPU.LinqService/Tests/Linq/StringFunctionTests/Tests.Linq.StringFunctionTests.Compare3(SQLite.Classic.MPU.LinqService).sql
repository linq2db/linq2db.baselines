﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substr([p].[FirstName], 2, 2) = Substr('Joh', 2, 2) AND
	[p].[PersonID] = 1

