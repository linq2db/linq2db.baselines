﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substring([p].[FirstName], 2, CHAR_LENGTH([p].[FirstName]) - 1) = 'ohn' AND
	[p].[PersonID] = 1

