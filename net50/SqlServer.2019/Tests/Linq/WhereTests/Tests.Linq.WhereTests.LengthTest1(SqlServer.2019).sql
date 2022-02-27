﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	(Len([nm].[MiddleName]) <> 0 OR Len([nm].[MiddleName]) IS NULL)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

