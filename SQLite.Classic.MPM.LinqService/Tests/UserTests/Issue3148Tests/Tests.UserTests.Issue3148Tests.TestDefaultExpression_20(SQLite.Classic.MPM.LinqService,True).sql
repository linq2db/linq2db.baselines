﻿BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[LastName] LIKE '%x' ESCAPE '~' AND Substr([r].[LastName], -1) = 'x'

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[LastName] LIKE '%x' ESCAPE '~' AND Substr([r].[LastName], -1) = 'x'

