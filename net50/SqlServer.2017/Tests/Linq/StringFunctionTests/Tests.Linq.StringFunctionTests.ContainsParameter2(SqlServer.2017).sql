BeforeExecute
-- SqlServer.2017
DECLARE @str_1 NVarChar(4000) -- String
SET     @str_1 = N'%o~%h%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @str_1 ESCAPE N'~' AND [p].[PersonID] = 1

