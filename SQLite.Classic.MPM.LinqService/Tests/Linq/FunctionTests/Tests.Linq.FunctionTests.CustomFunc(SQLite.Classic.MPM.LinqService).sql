﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[LastName] || ', ' || [p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[LastName] || ', ' || [p].[FirstName] = 'Pupkin, John'

