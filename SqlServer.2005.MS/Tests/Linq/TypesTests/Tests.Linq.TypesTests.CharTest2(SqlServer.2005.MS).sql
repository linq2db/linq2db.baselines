﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	N'M' = [p].[Gender]

