﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE N'joh%' ESCAPE N'~' AND
	[p].[PersonID] = 1

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) NOT LIKE N'joh%' ESCAPE N'~' AND
	[p].[PersonID] = 1

