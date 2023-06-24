﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	NOT ([nm].[MiddleName] IS NULL OR LEN(REPLACE([nm].[MiddleName],' ','.')) = 0)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

