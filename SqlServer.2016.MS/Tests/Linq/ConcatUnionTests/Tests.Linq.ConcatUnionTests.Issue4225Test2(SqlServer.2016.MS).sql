﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender],
	NULL,
	NULL
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	[x_1].[PersonID],
	[x_1].[Diagnosis]
FROM
	[Patient] [x_1]

