﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%o~%h%' ESCAPE N'~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%o~%h%' ESCAPE N'~' AND
	[p].[PersonID] = 1

