﻿BeforeExecute
-- SqlServer.2017

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	NOT (([nm].[MiddleName] IS NULL OR Len([nm].[MiddleName]) = 0))

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

