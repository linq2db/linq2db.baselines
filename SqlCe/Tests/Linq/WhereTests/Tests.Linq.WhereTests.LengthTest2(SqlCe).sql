﻿BeforeExecute
-- SqlCe

SELECT
	[nm].[FirstName]
FROM
	[Person] [nm]
WHERE
	LEN([nm].[FirstName] + '.') <> 1

BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

