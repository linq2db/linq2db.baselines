﻿BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(IIF([p].[FirstName] IS NULL, NULL, IIF(Lower([p].[FirstName]) LIKE N'jo%' ESCAPE N'~', 1, 0)) IS NULL, 0, IIF([p].[FirstName] IS NULL, NULL, IIF(Lower([p].[FirstName]) LIKE N'jo%' ESCAPE N'~', 1, 0))) = 1

