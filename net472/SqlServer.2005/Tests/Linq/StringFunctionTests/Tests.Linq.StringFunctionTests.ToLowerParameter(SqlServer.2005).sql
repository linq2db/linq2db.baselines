﻿BeforeExecute
-- SqlServer.2005
DECLARE @param NVarChar(4000) -- String
SET     @param = N'JOHN'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(Lower([p].[FirstName]) = Lower(@param) OR Lower([p].[FirstName]) IS NULL AND Lower(@param) IS NULL) AND
	[p].[PersonID] = 1

