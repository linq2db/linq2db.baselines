﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[MiddleName] IS NULL

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008
DECLARE @str NVarChar(4000) -- String
SET     @str = N'123'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[MiddleName] = @str

