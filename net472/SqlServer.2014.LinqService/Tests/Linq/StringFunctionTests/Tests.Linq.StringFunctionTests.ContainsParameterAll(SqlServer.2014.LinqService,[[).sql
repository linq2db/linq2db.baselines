BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[[456'
DECLARE @toTest NVarChar(4000) -- String
SET     @toTest = N'%~[~[%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest ESCAPE N'~'

