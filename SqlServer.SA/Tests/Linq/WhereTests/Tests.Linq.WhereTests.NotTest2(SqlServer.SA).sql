﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ([p].[MiddleName] IS NULL OR [p].[PersonID] <> @n)

