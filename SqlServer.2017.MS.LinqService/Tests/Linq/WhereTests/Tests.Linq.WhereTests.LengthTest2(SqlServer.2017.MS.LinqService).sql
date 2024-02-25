﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[nm_1].[FirstName]
FROM
	(
		SELECT
			Len([nm].[FirstName]) as [Length_1],
			[nm].[FirstName]
		FROM
			[Person] [nm]
	) [nm_1]
WHERE
	([nm_1].[Length_1] <> 0 OR [nm_1].[Length_1] IS NULL)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

