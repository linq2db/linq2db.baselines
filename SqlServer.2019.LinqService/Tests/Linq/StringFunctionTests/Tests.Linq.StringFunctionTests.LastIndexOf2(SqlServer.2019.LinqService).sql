﻿BeforeExecute
-- SqlServer.2019

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ((LEN(N'123' + [p].[FirstName] + N'012345.') - 1) - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'012345', 6, LEN(N'123' + [p].[FirstName] + N'012345.') - 6)))) - (LEN(N'123.') - 1) = 7 AND
	CharIndex(N'123', N'123' + [p].[FirstName] + N'012345', 6) <> 0

