﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	(Len([nm].[MiddleName]) <> 0 OR Len([nm].[MiddleName]) IS NULL)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

