﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p NVarChar(4000) -- String
SET     @p = N'JOHN'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Upper([p].[FirstName]) = @p AND [p].[PersonID] = 1

