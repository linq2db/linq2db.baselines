﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE N'%jOh%' ESCAPE N'~' AND [p].[PersonID] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE N'%jOh%' ESCAPE N'~' AND [p].[PersonID] = 1

