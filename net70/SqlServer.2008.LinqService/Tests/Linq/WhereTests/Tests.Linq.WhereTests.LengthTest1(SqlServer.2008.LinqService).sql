﻿BeforeExecute
-- SqlServer.2008

SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	(LEN(REPLACE([nm].[MiddleName],' ','.')) <> 0 OR LEN(REPLACE([nm].[MiddleName],' ','.')) IS NULL)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

