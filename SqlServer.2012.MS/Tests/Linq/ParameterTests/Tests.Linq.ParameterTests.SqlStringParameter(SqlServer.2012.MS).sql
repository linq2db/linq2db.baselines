﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @p NVarChar(4000) -- String
SET     @p = N'John'

SELECT TOP (2)
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @p NVarChar(4000) -- String
SET     @p = N'Tester'

SELECT TOP (2)
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[FirstName] = @p

