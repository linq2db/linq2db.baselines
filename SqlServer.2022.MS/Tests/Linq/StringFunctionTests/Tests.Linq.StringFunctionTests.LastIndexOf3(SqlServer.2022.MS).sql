﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'0123451234'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND (11 - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'0123451234', 6, 6)))) - (LEN(N'123.') - 1) = 7 AND
	CharIndex(N'123', Left(N'123' + [p].[FirstName] + N'0123451234', 11), 6) <> 0

