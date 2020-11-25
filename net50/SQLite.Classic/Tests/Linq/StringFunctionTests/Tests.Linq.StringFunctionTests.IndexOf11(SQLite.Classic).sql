﻿BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p1  -- Boolean
SET     @p1 = 0

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
		WHEN @p1 = 1 THEN 0
		ELSE CharIndex('oh', [p].[FirstName]) - 1
	END = 1 AND
	[p].[PersonID] = 1

