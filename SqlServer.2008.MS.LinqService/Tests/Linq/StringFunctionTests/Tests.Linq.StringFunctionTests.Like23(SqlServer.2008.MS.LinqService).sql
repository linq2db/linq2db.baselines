﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @pattern NVarChar(4000) -- String
SET     @pattern = N'%h~%n%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @pattern ESCAPE N'~' AND [p].[PersonID] = 1

