﻿BeforeExecute
-- SQLite.Classic SQLite

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
		WHEN LENGTH([p].[FirstName]) > 6 THEN [p].[FirstName]
		ELSE [p].[FirstName] || Replicate(' ', 6 - LENGTH([p].[FirstName]))
	END || '123' = 'John  123' AND
	[p].[PersonID] = 1

