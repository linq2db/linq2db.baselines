﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	CASE
		WHEN ([p].[FirstName] IS NULL OR Length([p].[FirstName]) = 0)
			THEN 1
		ELSE 0
	END,
	[p].[FirstName],
	CASE
		WHEN ([p].[MiddleName] IS NULL OR Length([p].[MiddleName]) = 0)
			THEN 1
		ELSE 0
	END,
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]

