﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[nm].[FirstName]
FROM
	[Person] [nm]
WHERE
	NOT (([nm].[FirstName] IS NULL OR Len([nm].[FirstName]) = 0))

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

