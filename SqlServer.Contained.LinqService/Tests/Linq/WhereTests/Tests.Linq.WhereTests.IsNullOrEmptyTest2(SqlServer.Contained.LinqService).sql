﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[nm].[FirstName]
FROM
	[Person] [nm]
WHERE
	[nm].[FirstName] IS NOT NULL AND (Len([nm].[FirstName]) <> 0 OR Len([nm].[FirstName]) IS NULL)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

