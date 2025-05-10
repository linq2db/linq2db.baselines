﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	NOT ([nm].[MiddleName] IS NULL OR Len([nm].[MiddleName]) = 0 AND [nm].[MiddleName] IS NOT NULL)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

