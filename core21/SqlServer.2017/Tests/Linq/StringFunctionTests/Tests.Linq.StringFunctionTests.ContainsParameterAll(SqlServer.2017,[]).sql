BeforeExecute
-- SqlServer.2017
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[]456'
DECLARE @toTest_1 NVarChar(4000) -- String
SET     @toTest_1 = N'%~[~]%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest_1 ESCAPE N'~'

