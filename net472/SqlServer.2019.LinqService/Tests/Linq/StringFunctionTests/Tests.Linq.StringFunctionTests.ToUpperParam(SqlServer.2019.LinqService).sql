﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @param NVarChar(4000) -- String
SET     @param = N'john'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(Upper([p].[FirstName]) = Upper(@param) OR Upper([p].[FirstName]) IS NULL AND Upper(@param) IS NULL) AND
	[p].[PersonID] = 1

