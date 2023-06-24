﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[nm].[FirstName]
FROM
	[Person] [nm]
WHERE
	NOT ([nm].[FirstName] IS NULL OR LEN(REPLACE([nm].[FirstName],' ','.')) = 0)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

