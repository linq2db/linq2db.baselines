﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @str NVarChar(4000) -- String
SET     @str = N'%oh%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @str ESCAPE N'~' AND [p].[PersonID] = 1

