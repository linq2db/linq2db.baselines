﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[456'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE N'%[[]%'

