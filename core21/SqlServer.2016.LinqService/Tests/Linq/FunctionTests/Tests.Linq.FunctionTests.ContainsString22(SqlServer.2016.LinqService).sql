﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @nm NVarChar(4000) -- String
SET     @nm = N'John'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN (@nm)

