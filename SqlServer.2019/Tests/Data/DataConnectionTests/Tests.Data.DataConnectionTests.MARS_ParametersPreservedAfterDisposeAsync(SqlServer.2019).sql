﻿BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @param NVarChar(4000) -- String
SET     @param = N'test'

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[LastName] = @param

