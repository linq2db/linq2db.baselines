﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	LTrim(RTrim(N'  ' + [p].[FirstName] + N' ')) = N'John' AND
	[p].[PersonID] = 1

