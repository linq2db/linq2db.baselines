﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] <> N'Jo' AND [p].[PersonID] = 1

