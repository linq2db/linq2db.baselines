﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @str_1 NVarChar(4000) -- String
SET     @str_1 = N'%oh%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @str_1 ESCAPE N'~' AND [p].[PersonID] = 1

