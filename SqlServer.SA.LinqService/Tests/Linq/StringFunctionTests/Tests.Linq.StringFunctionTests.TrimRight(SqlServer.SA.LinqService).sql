﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	RTrim(N'  ' + [p].[FirstName] + N' ') = N'  John' AND
	[p].[PersonID] = 1

