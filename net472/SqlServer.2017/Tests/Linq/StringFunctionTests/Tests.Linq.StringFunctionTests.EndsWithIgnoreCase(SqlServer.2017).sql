﻿BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%JOHN' ESCAPE N'~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%JOHN' ESCAPE N'~' AND [p].[PersonID] = 1

