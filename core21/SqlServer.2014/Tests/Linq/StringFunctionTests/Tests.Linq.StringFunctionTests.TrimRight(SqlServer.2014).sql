﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	RTrim(N'  ' + [p].[FirstName] + N' ') = N'  John' AND
	[p].[PersonID] = 1

