﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[PersonID],
	'123' + [p].[FirstName] + '0123451234'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND (11 - CharIndex('321', Reverse(Substring('123' + [p].[FirstName] + '0123451234', 6, 6)))) - Len('123') = 7 AND
	CharIndex('123', Substring(Left('123' + [p].[FirstName] + '0123451234', 11), 6, Len(Left('123' + [p].[FirstName] + '0123451234', 11)))) <> -5

