﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] <> COALESCE(1, 2147483647) OR COALESCE(1, 2147483647) IS NULL

